import 'package:appcardio/src/constants/image_strings.dart';
import 'package:appcardio/src/constants/sizes.dart';
import 'package:appcardio/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          /*
          Positioned(
            top: 0,
            left: 0,
            child: Image(image: AssetImage(tWelcomeScreenImage)),
          ),
          */
          Positioned(
            top: 80,
            left: tDefaultSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tWelcomeTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                /*
                Text(
                  tWelcomeSubTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                */
              ],
            ),
          ),
          /*
          Positioned(
            bottom: 100,
            child: Image(image: AssetImage(tWelcomeScreenImage)),
          )
          */
        ],
      ),
    ));
  }
}
