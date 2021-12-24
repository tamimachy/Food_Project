import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_project/model/categories.dart';
import 'package:food_project/screens/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;
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
                        "HungryNaki",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
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
                padding: const EdgeInsets.only(right: 10.0, top: 2),
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
            height: h * .065,
            width: w * .95,
            decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(12)),
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * .15,
                        child: ListView.builder(
                            itemCount: cat.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (contex, index) => Container(
                                  width: w * .19,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey[100],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: EdgeInsets.only(top: 10, right: 20),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: h * .1,
                                          width: w * .12,
                                          child: Image.asset(
                                            "${cat[index].img}",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Text("${cat[index].name}")
                                      ],
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                ), // Categories Box
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Popular",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * .27,
                        child: ListView.builder(
                            itemCount: pop.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (contex, index) => Container(
                                  width: w * .27,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey[100],
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3, color: Colors.black54),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: EdgeInsets.only(top: 10, right: 15),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 5),
                                        Container(
                                          child: Text("${pop[index].name}"),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
                                          },
                                          child: Container(
                                            height: h * .13,
                                            width: w * .18,
                                            child: Image.asset(
                                              "${pop[index].image}",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text("\$${pop[index].price}"),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              label: Text(
                                                "Add",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                ), // Popular Box
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.account_circle, 1),
          GestureDetector(
              onTap: (){},
              child: buildNavBarItem(Icons.shopping_cart, 2)),
          buildNavBarItem(Icons.support, 3),
          buildNavBarItem(Icons.settings, 4),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index,) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(width: 4, color: Colors.deepOrangeAccent)),
                gradient: LinearGradient(colors: [
                  Colors.deepOrange.withOpacity(0.3),
                  Colors.deepOrange.withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                // color: index == _selectedItemIndex ? Colors.green : Colors.white,
                )
            : BoxDecoration(),
        child: Icon(icon,
            color: index == _selectedItemIndex ? Colors.black : Colors.grey),
      ),
    );
  }
}
