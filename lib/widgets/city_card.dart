import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class CityCard extends StatelessWidget {
  const CityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 150,
        width: 120,
        color: smoothGreyColor,
        child: Column(
          children: [
            Image.asset("assets/city1.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
                "Jakarta",
              style: blackTextStyle.copyWith(
                fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }
}
