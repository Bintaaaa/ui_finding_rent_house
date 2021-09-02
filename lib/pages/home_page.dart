import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_bwa_koskos/model/city.dart';
import 'package:ui_bwa_koskos/model/guidance.dart';
import 'package:ui_bwa_koskos/model/space.dart';
import 'package:ui_bwa_koskos/pages/space_card.dart';
import 'package:ui_bwa_koskos/providers/space_provider.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';
import 'package:ui_bwa_koskos/widgets/bottom_navbar_item.dart';
import 'package:ui_bwa_koskos/widgets/city_card.dart';
import 'package:ui_bwa_koskos/widgets/tips_card.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    var spaceProvider = Provider.of<SpaceProvider>(context);


    return Scaffold(
      backgroundColor: whiteColor,
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
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(1,"Palembang","assets/city4.png",false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(1,"Aceh","assets/city5.png",false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(1,"Bogor","assets/city6.png",false),
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

            //NOTE RECOMENDED SPACES
            FutureBuilder(
              future: spaceProvider.getRecommendedSpaces(),
                builder: (context,snapShot){
                  if (snapShot.hasData) {
                    List<Space> data = snapShot.data;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 1,
                          ),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  }
              return Center(
                child: CircularProgressIndicator(),
              );
            }
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
