import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:course_app/view_model/controle_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.off(
        ControleView(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/Splash.png")),
            // SizedBox(
            //   height: 20,
            // ),
            // SpinKitFoldingCube(
            //   color: Colors.blue,
            //   size: 50.0,
            // )
          ],
        ),
      ),
    );
  }
}
// AnimatedSplashScreen(
//       splash: Center(
//         child: ListView(
//           children: [
//             Image.asset("assets/images/Splash.png"),
//           ],
//         ),
//       ),
//       nextScreen: ControleView(),
//       backgroundColor: Colors.white,
//       splashIconSize: 390,
//       duration: 1500,
//     );
