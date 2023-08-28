import 'package:appcardio/src/constants/image_strings.dart';
import 'package:appcardio/src/constants/sizes.dart';
import 'package:appcardio/src/constants/text_string.dart';
import 'package:appcardio/src/features/login/screens/signup/signup.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText: "Email",
                        hintText: "Ingresa tu email",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint_outlined),
                          labelText: "Contraseña",
                          hintText: "Ingresa tu contraseña",
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp))),
                  SizedBox(
                    height: tFormHeight - 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: Text("Olvidé mi contraseña")),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("LOGIN"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () => Get.to(() => const SignUpScreen()),
                        child: Text("Aun no tengo una cuenta")),
                  ),
                ],
              ),
            ))
          ]),
        ),
      ),
    ));
  }
}
