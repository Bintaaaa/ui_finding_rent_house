import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/model/guidance.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class TipsCard extends StatelessWidget {
  final Guidance guidance;
  TipsCard(this.guidance);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          guidance.imgUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             guidance.title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              guidance.status,
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
