import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/widgets/base_tab.dart';

import '../../core/theme/app_colors.dart';
import '../sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> taps = [
    BaseTab(image: "assets/images/quran_bg.png", child: Placeholder()),
    BaseTab(image: "assets/images/hadeth_bg.png", child: Placeholder()),
    BaseTab(image: "assets/images/ssebha_bg.png", child: SebhaScreen()),
    BaseTab(image: "assets/images/radio_bg.png", child: Placeholder()),
    BaseTab(image: "assets/images/time_bg.png", child: Placeholder()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps[index],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.gold,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (newIndex) {
          index = newIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: _bottomNavigationBarWidget(
              "assets/images/ic_quran.png",
              index == 0,
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: _bottomNavigationBarWidget(
              "assets/images/ic_hadith.png",
              index == 1,
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: _bottomNavigationBarWidget(
              "assets/images/ic_sebha.png",
              index == 2,
            ),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: _bottomNavigationBarWidget(
              "assets/images/ic_radio.png",
              index == 3,
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: _bottomNavigationBarWidget(
              "assets/images/ic_time.png",
              index == 4,
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }

  Widget _bottomNavigationBarWidget(String path, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.black.withAlpha(100) : Colors.transparent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: ImageIcon(AssetImage(path)),
    );
  }
}
