import 'dart:async';

import 'package:carrera_cucei_2022/features/running/application/running_state.dart';
import 'package:carrera_cucei_2022/features/running/provider/running_provider.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  bool listen = false;
  final Completer<GoogleMapController> _controller = Completer();
  final Set<Polyline> _polylines = <Polyline>{};
  List<LatLng> polylineCoordinates = [];

  LocationData? lastLocation;
  LocationData? currentLocation;
  Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  static const double tiltValue = 53;
  static const double zoom = 17;
  int polylineCount = 0;

  CameraPosition initialCameraPosition = const CameraPosition(
    zoom: zoom,
    tilt: tiltValue,
    target: LatLng(37.43296265331129, -122.08832357078792),
  );

  @override
  void initState() {
    super.initState();
    initLocationService();
    setInitialLocation();
  }

  Future<void> initLocationService() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        print("permiso denegado");
        return;
      }
    }

    location.onLocationChanged.listen((cLoc) {
      if (listen) {
        if (currentLocation == null) {
          currentLocation = cLoc;
        } else {
          lastLocation = currentLocation;
          currentLocation = cLoc;
        }
        if (currentLocation != null && lastLocation != null) {
          polylineCoordinates.add(
            LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
          );
          _polylines.add(
            Polyline(
              width: 5,
              polylineId: const PolylineId("constante"),
              color: colorPrimary,
              points: polylineCoordinates,
            ),
          );
          polylineCount++;
        }

        updatePinOnMap();
      } else {
        updatePinOnMap();
      }
    });
  }

  Future<void> setInitialLocation() async {
    currentLocation = await location.getLocation();
  }

  Future<void> updatePinOnMap() async {
    final GoogleMapController controller = await _controller.future;

    if (currentLocation != null) {
      final CameraPosition cPosition = CameraPosition(
        zoom: zoom,
        tilt: tiltValue,
        target: LatLng(
          currentLocation!.latitude!,
          currentLocation!.longitude!,
        ),
      );

      controller.animateCamera(CameraUpdate.newCameraPosition(cPosition));
    } else {
      controller
          .animateCamera(CameraUpdate.newCameraPosition(initialCameraPosition));
    }

    // do this inside the setState() so Flutter gets notified
    // that a widget update is due
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<RunningState>(runningProvider, (previous, next) {
      next.when(
        initial: () => null,
        running: () {
          _polylines.clear();
          polylineCoordinates.clear();
          Future.microtask(
            () => setState(() {
              listen = true;
              updatePinOnMap();
            }),
          );
        },
        stop: () {},
      );
    });

    if (currentLocation != null) {
      initialCameraPosition = CameraPosition(
        target: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
        zoom: zoom,
        tilt: tiltValue,
      );
    }

    return GoogleMap(
      zoomControlsEnabled: false,
      myLocationEnabled: true,
      buildingsEnabled: false,
      mapToolbarEnabled: false,
      polylines: _polylines,
      initialCameraPosition: initialCameraPosition,
      onMapCreated: (GoogleMapController controller) async {
        _controller.complete(controller);
        controller.setMapStyle(
          await rootBundle.loadString('assets/map/dark.json'),
        );
      },
    );
  }
}
