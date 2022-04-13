// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:latihan1/pages/splash_page.dart';
import 'package:latihan1/providers/space_provider.dart';
import 'package:provider/provider.dart';
// import 'package:latihan1/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
