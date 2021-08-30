import 'package:flutter/material.dart';
import 'package:ui_bwa_koskos/pages/home_page.dart';
import 'package:ui_bwa_koskos/theme/color.dart';
import 'package:ui_bwa_koskos/theme/font.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/error.png",
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Where are you going?",
                style: blackTextStyle.copyWith(
                  fontSize: 24
                ),
              ),
              Text(
                "Seems like the page that you were\nrequested is already gone",
                style: greyTextStyle.copyWith(
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),(route) => false);
                  },
                  color: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    "Back to home",
                    style: whiteTextStyle.copyWith(
                      fontSize: 18
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
