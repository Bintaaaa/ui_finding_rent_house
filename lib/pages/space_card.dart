import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class SpaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            decoration: BoxDecoration(
            ),
            child: Stack(
              children: [
                Image.asset(
                 "assets/space1.png",
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(color: purpleColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30)
                      ),
                    ),
                    child: Center(
                      child : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              "assets/icon_star.png",
                            width: 22,
                            height: 22,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                              "4/5",
                          style: whiteTextStyle.copyWith(
                            fontSize: 13
                          ),
                          )
                        ],
                      ),
                    )
                  ),
                )
              ],
            )
          ),
        )
      ],
    );
  }
}
