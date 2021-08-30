import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/theme/color.dart';

class BottomNavbarItem extends StatelessWidget {
  final String iconUrl;
  final bool isActive;

  BottomNavbarItem({this.iconUrl,this.isActive});
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Spacer(),
        Image.asset(
        iconUrl,
          width: 26,
        ),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000),
            ),
          ),
        ) : Container()
      ],
    );
  }
}
