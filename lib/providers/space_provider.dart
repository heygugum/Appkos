// ignore_for_file: unused_local_variable, avoid_print
// import 'package:latihan1/models/space.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/space.dart';

class SpaceProvider extends ChangeNotifier {
  dynamic getRecommendedSpaces() async {
    var result = await http
    .get(Uri.parse('https://bwa-cozy.herokuapp.com/recommended-spaces'),
    );

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
