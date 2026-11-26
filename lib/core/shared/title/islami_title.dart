import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class IslamiTitle extends StatelessWidget {
  const IslamiTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: Stack(
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
    );
  }
}
