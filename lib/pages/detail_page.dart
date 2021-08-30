import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';
import 'package:ui_bwa_koskos/widgets/facility_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  launchUrl(String url) async{
    if( await canLaunch(url)){
      launch(url);
    }else{
      throw(url);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
                "assets/thumbnail.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 330,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      //NOTE TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Kuretakeso Hott",
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: "\$52",
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 14
                                      ),
                                    children: [
                                      TextSpan(
                                        text: "/month",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 14
                                        )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/icon_star.png",
                                  width: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 2,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        child: Text(
                          "Main Facilities",
                          style: blackTextStyle.copyWith(
                            fontSize: 16
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             FacilitiesItem(
                               name: "Kitchen",
                               iconUrl: "assets/icon_kitchen.png",
                               total: 1,
                             ),
                             FacilitiesItem(
                               name: "Bedroom",
                               iconUrl: "assets/icon_bedroom.png",
                               total: 3,
                             ),
                             FacilitiesItem(
                               name: "Assets",
                               iconUrl: "assets/icon_cupboard.png",
                               total: 2,
                             )
                           ],
                        ),
                      ),
                      //NOTE: Photo
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge
                        ),
                        child: Text(
                          "Photos",
                          style: blackTextStyle.copyWith(
                              fontSize: 16
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 40,),
                          Image.asset(
                            "assets/photo1.png",
                            width: 110,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                            SizedBox(width: 18,),
                            Image.asset(
                              "assets/photo2.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18,),
                            Image.asset(
                              "assets/photo3.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 40,),
                          ]
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                    //  Location
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge
                        ),
                        child: Text(
                          "Location",
                          style: blackTextStyle.copyWith(
                              fontSize: 16
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jln. Hayu SUkses No. 99\nPalembang",
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: (){
                                launchUrl('https://tanpabatasgroup.com/links');
                              },
                              child: Image.asset(
                                "assets/btn_map.png",
                              width: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2*edge),
                        child: RaisedButton(
                          onPressed: (){
                            launchUrl('tel://+628999996043');
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          color: purpleColor,
                          child: Text("Book Now",
                            style: whiteTextStyle.copyWith(
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/btn_back.png",
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    "assets/btn_wishlist.png",
                    width: 40,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
