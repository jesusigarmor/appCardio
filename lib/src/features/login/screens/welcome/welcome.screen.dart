import 'package:appcardio/src/constants/colors.dart';
import 'package:appcardio/src/constants/sizes.dart';
import 'package:appcardio/src/features/login/screens/login/login.screen.dart';
import 'package:appcardio/src/features/login/screens/signup/signup.screen.dart';
import 'package:flutter/material.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_string.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(tWelcomeScreenImage),
              height: height * 0.6,
            ),
            Column(
              children: [
                Text(tWelcomeTitle,
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(
                  tWelcomeSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tSecondaryColor,
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight)),
                  child: Text("Login".toUpperCase()),
                )),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tWhiteColor,
                      backgroundColor: tSecondaryColor,
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight)),
                  child: Text("Signup".toUpperCase()),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
