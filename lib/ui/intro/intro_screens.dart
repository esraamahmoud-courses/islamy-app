import 'package:flutter/material.dart';
import 'package:islamy_app/core/theme/app_colors.dart';

import '../../core/theme/app_fonts.dart';
import 'intro_page_view.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * .02),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/Mosque.png"),
                  Positioned(
                    top: size.height * .07,
                    left: 0,
                    right: 0,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Islami',
                          style: titleLarge(
                            family: "Kamali",
                            weight: .normal,
                            size: 80,
                            color: AppColors.gold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * .03),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: IntroPageView(),
                ),
              ),

              // Simple Dot Indicator
            ],
          ),
        ),
      ),
    );
  }
}
