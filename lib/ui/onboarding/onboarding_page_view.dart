import 'package:flutter/material.dart';

import '../../core/routes/app_routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final PageController _pageController = PageController(viewportFraction: 1.0);
  int _currentPage = 0;

  final List<Map<String, String>> _items = [
    {
      "image": "assets/images/intro1.png",
      "title": "Welcome To Islami App",
      "description": "",
    },
    {
      "image": "assets/images/kabba.png",
      "title": "Welcome To Islami",
      "description": "We Are Very Excited To Have You In Our Community",
    },
    {
      "image": "assets/images/welcome.png",
      "title": "Reading the Quran",
      "description": "Read, and your Lord is the Most Generous",
    },
    {
      "image": "assets/images/bearish.png",
      "title": "Bearish",
      "description": "Praise the name of your Lord, the Most High",
    },
    {
      "image": "assets/images/radio.png",
      "title": "Holy Quran Radio",
      "description": "You can listen to the Holy Quran Radio through the application for free and easily",
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: size.height * .09,
            width: size.width,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _items.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                // Optional: Scale down non-active cards smoothly
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double scale = 1.0;
                    if (_pageController.position.haveDimensions) {
                      double pageOffset = (_pageController.page ?? 0) - index;
                      scale = (1 - (pageOffset.abs() * 0.15)).clamp(0.85, 1.0);
                    }
                    return Transform.scale(scale: scale, child: child);
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          _items[index]["image"]!,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: size.height * .05),

                      Text(
                        _items[index]["title"]!,
                        style: titleMedium(color: AppColors.gold),
                      ),
                      SizedBox(height: size.height * .05),
                      Text(
                        _items[index]["description"]!,
                        textAlign: TextAlign.center,
                        style: titleMedium(color: AppColors.gold, size: 20),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: size.height * .05),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _currentPage > 0
                ? TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Back",
                      style: labelMedium(weight: .bold, color: AppColors.gold),
                    ),
                  )
                : TextButton(onPressed: () {}, child: Text("")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _items.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width: _currentPage == index ? 20 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColors.gold
                        : AppColors.gray,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            _currentPage != _items.length - 1
                ? TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Next",
                      style: labelMedium(weight: .bold, color: AppColors.gold),
                    ),
                  )
                : TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.home);
                    },
                    child: Text(
                      "Finish",
                      style: labelMedium(weight: .bold, color: AppColors.gold),
                    ),
                  ),
          ],
        ),
        // Simple Dot Indicator
      ],
    );
  }
}
