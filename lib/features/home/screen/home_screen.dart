import 'package:care_agent/common/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF0E6),
      body: SafeArea(
        child: Center(
          child: SvgPicture.asset(
            'assets/home.svg',
            height: 200,
            width: 200,
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(
        currentIndex: _currentIndex,
        onTap: (index) {
        },
      ),

    );
  }
}
