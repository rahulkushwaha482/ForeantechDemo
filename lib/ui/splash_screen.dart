import 'dart:async';

import 'package:flutter/material.dart';
import 'package:forentech_assignment/core/constant/app_string.dart';
import 'package:forentech_assignment/core/constant/app_theme.dart';
import 'package:forentech_assignment/core/utils/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>   with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState()   {
    super.initState();
    _autoLogIn();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _autoLogIn() async {
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 4);
    return Timer(_duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.themeColor,
      body: SafeArea(
        child: Center(
          child: Text(
            AppString.compName,
            style: TextStyle(fontSize: 18, color: AppTheme.whiteColor),
          ),



        ),
      ),
    );
  }

  navigationPage() async {
    Navigator.popAndPushNamed(context, StringConfig.LOGIN_PAGE_NEW);
  }
}

