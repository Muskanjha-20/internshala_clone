import 'package:flutter/material.dart';
import 'package:internshala_clone/screens/bottom.dart';
import 'package:internshala_clone/screens/home_screen.dart';
import 'package:internshala_clone/screens/screen3.dart';
import 'package:internshala_clone/screens/screen4.dart';
import 'package:internshala_clone/screens/internships_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selected_index = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const InternshipsScreen(),
    const Screen3(),
    const Screen4(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: const PreferredSize(
        //   preferredSize: Size.fromHeight(60),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Icon(
        //         Icons.menu_rounded,
        //         size: 30,
        //       ),
        //       SizedBox(
        //         width: 20,
        //       ),
        //       Text(
        //         'Internships',
        //         style: TextStyle(
        //           fontWeight: FontWeight.w600,
        //           fontSize: 26,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Center(
          child: screens.elementAt(selected_index),
        ),
        bottomNavigationBar: BottomNavBarWidget(
          ontap: (int) {
            setState(() {
              selected_index = int;
            });
          },
          currentIndex: selected_index,
        ),
      ),
    );
  }
}
