// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ErorPage extends StatelessWidget {
  const ErorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('error page'),
      ),
    );
  }
}
