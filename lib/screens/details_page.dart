import 'package:flutter/material.dart';
import 'package:food_project/model/categories.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${pop[0].name}", style: GoogleFonts.secularOne(
        )),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text("${pop[0].name}"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("\$${pop[0].price}", style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.35,
              width: MediaQuery.of(context).size.width*.55,
              child: Image.asset("${pop[0].image}"),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 30,
                  width: 40,
                  color: Colors.deepOrange,
                  child: TextButton(onPressed: (){},
                  child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(width:5),
                Text("Number"),
                SizedBox(width:5),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 30,
                  width: 40,
                  color: Colors.deepOrange,
                  child: TextButton(onPressed: (){},
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
                width: MediaQuery.of(context).size.width*.7,
                child: Text("Pepperoni is an American veriety of spicy salami made from cured pork and beef seasoned with paprika or other chili pepper.")),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height*.07,
              width: MediaQuery.of(context).size.width*.8,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                onPressed: (){},
                child: Text("Add To Card", style: TextStyle(color: Colors.white),),
              ),
            )
          ]
        )
      )
    );
  }
}
