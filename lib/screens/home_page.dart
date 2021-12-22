import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;  

    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(children: [
                Text("Hi Alex"),
                Text("Order & Eat")
              ],),
            ),
            Container(
              height: h*.09,
              width: w*.12,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30)),
              child: Image.asset("assets/images/logo.png", fit: BoxFit.cover,))
          ],
        )
      ],),
    );
  }
}