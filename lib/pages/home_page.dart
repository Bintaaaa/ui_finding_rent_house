import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/model/city.dart';
import 'package:ui_bwa_koskos/model/guidance.dart';
import 'package:ui_bwa_koskos/model/space.dart';
import 'package:ui_bwa_koskos/pages/space_card.dart';
import 'package:ui_bwa_koskos/theme/font.dart';
import 'package:ui_bwa_koskos/widgets/bottom_navbar_item.dart';
import 'package:ui_bwa_koskos/widgets/city_card.dart';
import 'package:ui_bwa_koskos/widgets/tips_card.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge
              ),
              child: Text(
                  "Explore Now",
                style: blackTextStyle.copyWith(
                  fontSize: 24
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
                padding: EdgeInsets.only(
              left: edge
            ),


              // NOTE: TITLE/HEADER


              child: Text(
                "Mencari kosan yang cozy",
                style: greyTextStyle.copyWith(
                  fontSize: 16
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge
              ),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(
                  fontSize: 16
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),


            //NOTE: Popular Cities

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(1,"Jakarta","assets/city1.png",false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(1,"Bandung","assets/city2.png",true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(1,"Surabaya","assets/city3.png",false),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //  NOTE : Recomanded Space
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Recommended Space",
                style: blackTextStyle.copyWith(
                    fontSize: 18
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                SpaceCard(
                  Space(1,"Kuretakeso Hott","assets/space1.png",4,52,"Bandung","Indonesia")
                ),
                SpaceCard(
                    Space(2,"Rumah Nenek","assets/space2.png",4,102,"Kejora","Indonesia")
                ),
                SpaceCard(
                    Space(3,"Kosan Mas Oji","assets/space3.png",5,212,"Teluk Jambe","Indonesia")
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),


            //NOTE : Tips and Guidance
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                "Tips & Guidance",
                style: blackTextStyle.copyWith(
                  fontSize: 18
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Guidance("City Guidesline","Updated 30 sept 2020","assets/tips1.png")
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  TipsCard(
                      Guidance("Term and Condition","Update 11 January 2021","assets/tips2.png")
                  )
                ],
              )
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              iconUrl: "assets/icon_home.png",
              isActive: true,
            ),
            BottomNavbarItem(
              iconUrl: "assets/icon_email.png",
              isActive: false,
            ),
            BottomNavbarItem(
              iconUrl: "assets/icon_card.png",
              isActive: false,
            ),
            BottomNavbarItem(
              iconUrl: "assets/icon_love.png",
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
