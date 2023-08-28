import 'package:appcardio/src/constants/image_strings.dart';
import 'package:appcardio/src/constants/sizes.dart';
import 'package:appcardio/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /**-----------S1------------ */
            Image(
              image: AssetImage(tWelcomeScreenImage),
              height: height * 0.2,
            ),
            Text(tWelcomeTitle,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(
              tWelcomeSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            /**-----------S2------------ */
            Form(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.abc),
                        labelText: "Nombre",
                        hintText: "Ingresa tu nombre",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc),
                    labelText: "Apellido",
                    hintText: "Ingresa tu apellido",
                    border: OutlineInputBorder(),
                  )),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc),
                    labelText: "Cedula Profesional",
                    hintText: "Ingresa tu cedula",
                    border: OutlineInputBorder(),
                  )),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android_outlined),
                    labelText: "Telefono",
                    hintText: "Ingresa tu telefono",
                    border: OutlineInputBorder(),
                  )),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Correo Electronico",
                    hintText: "Ingresa tu correo electronico",
                    border: OutlineInputBorder(),
                  )),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          labelText: "Contraseña",
                          hintText: "Ingresa tu contraseña",
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp))),
                  SizedBox(
                    height: tFormHeight - 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("SIGNUP"),
                    ),
                  )
                ],
              ),
            ))
          ]),
        ),
      ),
    ));
  }
}
