import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/model/space.dart';
import 'package:ui_bwa_koskos/pages/error_page.dart';
import 'package:ui_bwa_koskos/pages/space_card.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';
import 'package:ui_bwa_koskos/widgets/facility_item.dart';
import 'package:ui_bwa_koskos/widgets/rating_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final Space space;
  DetailPage(this.space);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw (url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
                widget.space.imageUrl,
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
                                    widget.space.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: "\$${widget.space.price}",
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
                              children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    left: 2,
                                  ),
                                  child: RatingItem(
                                    index: index,
                                    rating: widget.space.rating,
                                  ),
                                );
                              }).toList(),
                            ),
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
                               total: widget.space.numberOfKitchens,
                             ),
                             FacilitiesItem(
                               name: "Bedroom",
                               iconUrl: "assets/icon_bedroom.png",
                               total: widget.space.numberOfBedrooms,
                             ),
                             FacilitiesItem(
                               name: "Assets",
                               iconUrl: "assets/icon_cupboard.png",
                               total: widget.space.numberOfCupboards,
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
                          children: widget.space.photos.map((item) {
                            return Container(
                              margin: EdgeInsets.only(left: 24),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  item,
                                  width: 130,
                                ),
                              ),
                            );
                          }).toList(),
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
                              "${widget.space.address}\n${widget.space.country}",
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: (){
                                launchUrl(widget.space.mapUrl);
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
                            launchUrl('tel://${widget.space.phone}');
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
                  InkWell(
                    onTap: (){
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Image.asset(
                      isLike ? "assets/btn_wishlist_active.png" : "assets/btn_wishlist.png",
                      width: 40,
                    ),
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

