import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_bwa_koskos/pages/splash_page.dart';
import 'package:ui_bwa_koskos/providers/space_provider.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => SpaceProvider(),
    child: MaterialApp(
    title: 'KOSMami',
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
    )
    );

  }
}
