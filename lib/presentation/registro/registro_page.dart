import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tarea/presentation/shared/widgets/text_field_base.dart';

class RegistroPage extends ConsumerStatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegistroPageState();
}

class _RegistroPageState extends ConsumerState<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff7b100),
        title: const Text(
          'Registro de usuarios',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              label: "Nombre",
              hint: "",
              initialValue: "",
              icon: const Icon(Icons.person),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              label: "Código",
              hint: "",
              initialValue: "",
              onChanged: (value) {},
              icon: const Icon(Icons.code),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              label: "Contraseña",
              hint: "",
              icon: const Icon(Icons.password),
              initialValue: "",
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              label: "Teléfono",
              icon: const Icon(Icons.phone),
              hint: "",
              initialValue: "",
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              label: "Correo",
              hint: "",
              initialValue: "",
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              label: "Escuela",
              hint: "",
              initialValue: "",
              icon: const Icon(Icons.business),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldBase(
              icon: const Icon(Icons.school),
              label: "Semestre",
              hint: "",
              initialValue: "",
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff7b100),
                    //primary: Colors.grey.shade800,
                  ),
                  child: Text(
                    "Registrar Usuario".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
