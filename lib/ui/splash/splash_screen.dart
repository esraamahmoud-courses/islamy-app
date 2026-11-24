import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/core/routes/app_routes.dart';
import 'package:islamy_app/core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, AppRoutes.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/splash_bg.png", fit: BoxFit.cover),
          Center(
            child: ZoomIn(
              duration: Duration(milliseconds: 800),
              child: Image.asset(
                "assets/images/islami_logo.png",
                width: size.width * .4,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: size.height * .05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideInUp(
                  duration: Duration(milliseconds: 800),
                  child: Image.asset(
                    "assets/images/img_branding.png",
                    width: size.width * .6,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: size.height * .23,
            child: SlideInLeft(
              duration: Duration(milliseconds: 800),
              child: Image.asset("assets/images/Shape_left.png"),
            ),
          ),
          Positioned(
            right: 0,
            bottom: size.height * .17,
            child: Transform.flip(
              flipX: true,
              child: SlideInLeft(
                duration: Duration(milliseconds: 800),
                child: Image.asset("assets/images/Shape_left.png"),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: size.height * .04,
            child: ZoomIn(
              duration: Duration(milliseconds: 800),
              child: Image.asset("assets/images/Mosque.png"),
            ),
          ),
          Positioned(
            top: 0,
            right: .12,
            child: SlideInDown(
              duration: Duration(milliseconds: 800),
              child: Image.asset(
                "assets/images/Glow.png",
                width: size.width * .25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
