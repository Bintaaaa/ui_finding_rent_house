import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/model/space.dart';
import 'package:ui_bwa_koskos/pages/detail_page.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: edge),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
        },
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: 130,
                    height: 110,
                    child: Stack(
                      children: [
                        Image.asset(
                         space.imageUrl,
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
                                      "${space.rating}/5",
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 13
                                  ),
                                  ),
                                ],
                              ),
                            )
                          ),
                        )
                      ],
                    )
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      space.name,
                      style: blackTextStyle.copyWith(
                          fontSize: 18
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "\$${space.price}",
                        style: purpleTextStyle.copyWith(
                          fontSize: 16
                        ),
                        children: [
                          TextSpan(
                            text: "/mounth",
                            style: greyTextStyle.copyWith(
                              fontSize: 16
                            )
                          )
                        ]
                      )
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "${space.city}, ${space.country}",
                      style: greyTextStyle.copyWith(
                        fontSize: 14
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
