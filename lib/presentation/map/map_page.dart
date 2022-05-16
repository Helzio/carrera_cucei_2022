import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class MapPage extends ConsumerWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
 
    return Container(
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: MapboxMap(
            accessToken:
                "pk.eyJ1IjoiY2hlY2toZWx6aW8iLCJhIjoiY2wzOHplbXh3MDBzdzNqbWtoMnpmOW4zYyJ9.-RtwRODUhF27Gmh4TdOe0Q",
            initialCameraPosition: const CameraPosition(
              target: LatLng(20.656754000000014, 103.32536400000001),
            ),
          ),
        ),
      ),
    );
  }
}
