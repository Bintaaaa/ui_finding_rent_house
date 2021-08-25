import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/pages/splash_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOSMami',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
