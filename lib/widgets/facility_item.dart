import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class FacilitiesItem extends StatelessWidget {
  final String name;
  final String iconUrl;
  final int total;

  FacilitiesItem({this.name,this.iconUrl,this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          iconUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: "$total",
            style: purpleTextStyle.copyWith(
              fontSize: 14
            ),
            children: [
              TextSpan(
                text: " $name",
                style: greyTextStyle.copyWith(
                  fontSize: 14
                )
              )
            ]
          )
        )
      ],
    );
  }
}
