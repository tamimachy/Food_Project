import 'dart:async';
import 'package:food_project/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Timer(
        Duration(seconds: 10),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
                height: h * .85,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[400],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("FoodBite",
                          style: GoogleFonts.alfaSlabOne(
                            color: Colors.white,
                              fontSize: 30,)),
                    ),
                    Container(
                        height: h * .35,
                        width: w * .5,
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("Food Delivery App", style: GoogleFonts.secularOne(
                          color: Colors.white,
                          fontSize: 24, )),
                    )
                  ],
                )),
            SizedBox(
              height: h * .05,
            ),
            Container(
              height: h * .07,
              width: w * .35,
              decoration: BoxDecoration(
                  color: Colors.deepOrange[400],
                  borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.patuaOne(color: Colors.white, fontSize:18)
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
