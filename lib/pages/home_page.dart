import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/model/city.dart';
import 'package:ui_bwa_koskos/pages/space_card.dart';
import 'package:ui_bwa_koskos/theme/font.dart';
import 'package:ui_bwa_koskos/widgets/city_card.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: edge
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
              Column(
                children: [
                  SpaceCard()
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
