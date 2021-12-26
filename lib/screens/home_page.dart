import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_project/model/categories.dart';
import 'package:food_project/screens/cart_page.dart';
import 'package:food_project/screens/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
          title: Column(children: [
            Text("FoodBite",
                style: GoogleFonts.alfaSlabOne(
                  color: Colors.deepOrange,
                )),
            Text(
              "Order & Eat",
              style:
                  GoogleFonts.merriweather(color: Colors.black, fontSize: 16),
            )
          ]),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset("assets/images/small.png")),
            ),
          ],
          backgroundColor: Colors.white),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                  height: h * 0.06,
                  width: w * .94,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.deepOrange,
                      ),
                      hintText: "Find your food",
                      hintStyle: GoogleFonts.patuaOne(color: Colors.deepOrange),
                    ),
                  ))), // Search Box
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
                      width: w * .48,
                      child: Image.asset("assets/images/delivery.png")),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, right: 50, bottom: 5),
                      child: Text(
                        "Free Delivery",
                        style: GoogleFonts.patuaOne(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        "January 1 - February 10",
                        style: GoogleFonts.sourceSerifPro(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50, top: 5),
                      child: Container(
                          height: h * .05,
                          width: w * .23,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Order Now",
                              style: GoogleFonts.patuaOne(color: Colors.white),
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
                      style: GoogleFonts.patuaOne(
                          fontWeight: FontWeight.bold, fontSize: 18),
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
                                    color: Colors.grey[300],
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
                                        Text("${cat[index].name}", style: GoogleFonts.merriweather(
                                        ),)
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
                    style: GoogleFonts.patuaOne(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * .265,
                        child: ListView.builder(
                            itemCount: pop.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (contex, index) => Container(
                                  width: w * .28,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3, color: Colors.black54),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: EdgeInsets.only(top: 10, right: 15, left: 2, bottom: 2),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 5),
                                        Container(
                                          child: Text("${pop[index].name}", style: GoogleFonts.merriweather(),),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailsPage()));
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
                                        Text("\$${pop[index].price}", style: TextStyle(fontWeight: FontWeight.bold),),
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
                                                style: GoogleFonts.patuaOne(
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
          buildNavBarItem(Icons.shopping_cart, 2),
          buildNavBarItem(Icons.support, 3),
          buildNavBarItem(Icons.settings, 4),
        ],
      ),
    );
  }

  Widget buildNavBarItem(
    IconData icon,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
        if (_selectedItemIndex == 2) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CardPage()));
        }
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
