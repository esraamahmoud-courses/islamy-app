import 'package:flutter/material.dart';

class BaseTab extends StatelessWidget {
  final String image;
  final Widget child;

  const BaseTab({super.key, required this.image, required this.child});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: Image.asset(
              "assets/images/title_logo.png",
              width: size.width * .7,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.height * .03),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
