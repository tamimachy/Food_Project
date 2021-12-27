import 'package:flutter/material.dart';
import 'package:food_project/screens/home_page.dart';
import 'package:food_project/screens/payment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_project/model/categories.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int _count = 1;
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Card",
            style:
                GoogleFonts.secularOne(color: Colors.deepOrange, fontSize: 25)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: h * .15,
                      width: w * .2,
                      child: Image.asset("${pop[0].image}")),
                  Column(
                    children: [
                      Text(
                        "Pepperoni",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 30,
                            width: 40,
                            color: Colors.deepOrange,
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 30,
                            width: 40,
                            color: Colors.deepOrange,
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "\$${pop[0].price}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "\$${pop[0].price}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 10, right: 10),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: h * .15,
                      width: w * .2,
                      child: Image.asset("${pop[1].image}")),
                  Column(
                    children: [
                      Text(
                        "Burger",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 30,
                            width: 40,
                            color: Colors.deepOrange,
                            child: TextButton(
                              onPressed: () {
                                _decrementCount();
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "$_count",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 30,
                            width: 40,
                            color: Colors.deepOrange,
                            child: TextButton(
                              onPressed: () {
                                _incrementCount();
                              },
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("\$${pop[1].price}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "\$17.58",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: h * .15,
                      width: w * .2,
                      child: Image.asset("assets/images/drink.png")),
                  Column(
                    children: [
                      Text(
                        "Drink",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 30,
                            width: 40,
                            color: Colors.deepOrange,
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("1",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 8),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 30,
                            width: 40,
                            color: Colors.deepOrange,
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("\$${pop[2].price}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "\$${pop[2].price}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Total: ",
                  style: GoogleFonts.merriweather(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$37.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tax: ", style: GoogleFonts.merriweather(
                      fontSize: 17, fontWeight: FontWeight.bold),),
                Text("\$2.00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Services: ",style: GoogleFonts.merriweather(
                      fontSize: 17, fontWeight: FontWeight.bold),),
                Text("\$10.00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total: ", style: GoogleFonts.merriweather(
                      fontSize: 21, fontWeight: FontWeight.bold),),
                Text("\$49.00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: h * .06,
              width: w * .7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrange,
              ),
              child: TextButton(
                onPressed: () {},
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
                  },
                  child: Text(
                    "Checkout",
                    style:
                        GoogleFonts.patuaOne(fontSize: 19, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
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
        if (_selectedItemIndex == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
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
