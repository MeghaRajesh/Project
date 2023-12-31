import 'dart:async';
import "package:flutter/material.dart";

import 'package:provider/provider.dart';
import 'signIn.dart';
import 'nextScreen.dart';
import 'loginpage.dart';
import 'admin_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//init state
  @override
  void initState() {
    final sp = context.read<signIn>();
    super.initState();
    Timer(const Duration(seconds: 2), () {
      sp.isSignedIn == false
          ? nextScreen(context, const login())
          : nextScreen(context, Admin_Home());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}