// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:latihan1/models/tips.dart';
import 'package:latihan1/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackStayle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Updated ${tips.update}',
              style: greyStyle.copyWith(fontSize: 16),
            )
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            size: 24,
          ),
        )
      ],
    );
  }
}
