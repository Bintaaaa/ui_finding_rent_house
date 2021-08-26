import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/model/city.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);
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
            Stack(
              children: [
                Image.asset(
                city.imageUrl,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
                ),
                city.isFav ?
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36)
                        )
                    ),
                    child: Center(
                      child: Image.asset(
                          "assets/icon_star.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ) : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
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
