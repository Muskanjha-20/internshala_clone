import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  final Function(int) ontap;
  final int currentIndex;

  const BottomNavBarWidget(
      {super.key, required this.ontap, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      selectedIconTheme: const IconThemeData(
        color: Colors.blue,
      ),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home_filled,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Internships',
          icon: Icon(
            Icons.rocket_launch_outlined,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Jobs',
          icon: Icon(
            Icons.work_outline_rounded,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Courses',
          icon: Icon(
            Icons.live_tv_sharp,
            size: 35,
          ),
        ),
      ],
      onTap: ontap,
    );
  }
}
