import 'package:flutter/material.dart';
import 'package:food_project/model/categories.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _count=1;
  void _incrementCount(){
    setState(() {
      _count++;
    });
  }
  void _decrementCount(){
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("${pop[0].name}", style: GoogleFonts.secularOne()),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text("${pop[0].name}", style: GoogleFonts.patuaOne(
              color: Colors.black,
              fontSize: 20,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "\$${pop[0].price}",
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold
                  ,fontSize: 20),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: h * .35,
            width: w * .55,
            child: Image.asset("${pop[0].image}"),
          ),
          SizedBox(
            height: 20,
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
              Text('$_count', style: TextStyle(fontWeight: FontWeight.bold)),
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
          SizedBox(height: 30),
          Container(
              width: w * .7,
              child: Text(
                  "Pepperoni is an American veriety of spicy salami made from cured pork and beef seasoned with paprika or other chili pepper.",
                  style: GoogleFonts.merriweather(

                  ),)),
          Spacer(),
          Container(
            height: h * .07,
            width: w * .8,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Add To Card",
                style: GoogleFonts.patuaOne(
                  fontSize: 19,color: Colors.white),
              ),
            ),
          )
        ])));
  }
}
