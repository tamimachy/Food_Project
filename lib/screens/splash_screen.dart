import 'dart:async';
import 'home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())));

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
                      child: Text("Project Name"),
                    ),
                    Container(
                      height: h*.35,
                      width: w*.5,
                      child: Image.asset("assets/images/logo.png", fit: BoxFit.cover,)),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("Food Delivery App"),
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
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
