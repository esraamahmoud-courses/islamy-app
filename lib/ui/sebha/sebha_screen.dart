import 'package:flutter/material.dart';
import 'package:islamy_app/core/theme/app_fonts.dart';

import '../../core/theme/app_colors.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen>
    with TickerProviderStateMixin {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height * .03),

        Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى", style: titleLarge(size: 36)),
        SizedBox(height: size.height * .03),

        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/sebha_img.png"),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Column(
                children: [
                  SizedBox(height: size.height * .1),
                  Text("سبحان الله", style: titleLarge(size: 36)),
                  SizedBox(height: size.height * .02),
                  Text(counter.toString(), style: titleLarge(size: 36)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
