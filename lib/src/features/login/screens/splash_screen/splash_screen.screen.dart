import 'package:appcardio/src/constants/colors.dart';
import 'package:appcardio/src/constants/image_strings.dart';
import 'package:appcardio/src/constants/sizes.dart';
import 'package:appcardio/src/constants/text_string.dart';
import 'package:appcardio/src/features/login/screens/welcome/welcome.screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: Image(image: AssetImage(tWelcomeScreenImage)),
          ),
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
          Positioned(
            bottom: 100,
            child: Image(image: AssetImage(tWelcomeScreenImage)),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainterSize,
              height: tSplashContainterSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor),
            ),
          )
        ],
      ),
    ));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(microseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(microseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
