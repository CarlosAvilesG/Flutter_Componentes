import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: const [
                CustomInputField(
                    labelText: 'Nombre', hintText: 'Nombre Usuario'),
                SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Apellido', hintText: 'Apellido Paterno'),
                SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Correo Electronico',
                    hintText: 'correo@electronico.com',
                    keyBoardType: TextInputType.emailAddress),
                SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña segura',
                  esPassword: true,
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
