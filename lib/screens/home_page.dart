import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_project/model/categories.dart';

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
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Hi Alex",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Order & Eat")
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 5),
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
          ), // Top
          SizedBox(
            height: 10,
          ),
          Container(
            height: h * .08,
            width: w * .95,
            decoration: BoxDecoration(
                color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(12)),
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
          ), // Search Box
          SizedBox(height: 10),
          Container(
            height: h * .2,
            width: w * .95,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                      height: h * .18,
                      width: w * .43,
                      child: Image.asset("assets/images/delivery.png")),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, right: 50, bottom: 5),
                      child: Text(
                        "Free Delivery",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        "May 2 - June 10",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50, top: 5),
                      child: Container(
                          height: h * .05,
                          width: w * .20,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Order Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ), // 2nd Box
          SizedBox(height: 10,),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                  child: Text("Categories", style: TextStyle(fontWeight: FontWeight.bold),)),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: h*.15,
                        child: ListView.builder(
                          itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (contex, index)=> Container(
                              height: h*.15,
                              width: w*.15,
                              margin: EdgeInsets.all(10),
                              child: Center(
                                child: Text("Card $index"),
                              ),
                              color: Colors.pinkAccent,
                            )
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
