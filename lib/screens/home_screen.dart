import 'package:flutter/material.dart';
import 'package:shop/config/firebase_initialize.dart';
import 'package:shop/tabs/home_tab.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        FirebaseInitialize(),
      ],
    );
  }
}
