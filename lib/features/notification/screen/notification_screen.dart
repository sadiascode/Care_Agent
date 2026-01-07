import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/custom_navbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _currentIndex = 3;
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
