import 'package:flutter/material.dart';
import 'package:islamy_app/core/theme/app_colors.dart';

import 'onboarding_page_view.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
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
              Image.asset(
                "assets/images/title_logo.png",
                width: size.width * .7,
              ),
              SizedBox(height: size.height * .03),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: OnboardingPageView(),
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
