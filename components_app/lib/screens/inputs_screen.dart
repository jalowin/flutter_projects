import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Ricardo',
      'last_name': 'Jiménez Hurtado',
      'email': 'jimenezhurtadoricardo@gmail.com',
      'password': '123456',
      'role': 'admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellidos",
                  hintText: "Apellidos del usuario",
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Correo",
                  hintText: "Correo del usuario",
                  inputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Contraseña",
                  hintText: "Contraseña del usuario",
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: "admin",
                      child: Text("Administrador"),
                    ),
                    DropdownMenuItem(
                      value: "superuser",
                      child: Text("Superuser"),
                    ),
                    DropdownMenuItem(
                      value: "developer",
                      child: Text("Developer"),
                    ),
                    DropdownMenuItem(
                      value: "jr_developer",
                      child: Text("Jr. Developer"),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'admin';
                  },
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Guardar"),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print("Formulario no valido");
                      return;
                    }
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
