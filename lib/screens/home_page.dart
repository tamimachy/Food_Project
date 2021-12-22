import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [Text("Hi Alex"), Text("Order & Eat")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                    height: h * .09,
                    width: w * .12,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(width: 2, color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: h * .08,
            width: w * .9,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: "Find your food",
                  prefixIcon: Icon(Icons.search_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                )),
          ),
          SizedBox(height: 10),
          Container(
            height: h * .2,
            width: w * .9,
            decoration: BoxDecoration(color: Colors.orangeAccent),
            child: Row(
              children: [
                Container(
                    height: h * .18,
                    width: w * .43,
                    child: Image.asset(
                        "assets/images/delivery.png")),
                Column(
                  children: [
                    Text("Free Delivery"),
                    Text("May 2 - June 10"),
                    Container(
                      height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                        color: Colors.black,
                    ),
                        child: ElevatedButton(onPressed: () {}, child: Text("Order Now")))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
