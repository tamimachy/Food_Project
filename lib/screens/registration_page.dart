import 'package:food_project/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:food_project/utils/style.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form", style: GoogleFonts.ebGaramond(textStyle: h1)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>Login()));}, icon: Icon(Icons.arrow_back, color: Colors.blueGrey[900],)),
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Center(child: Image.asset("assets/images/register.png", height: 200, width: 400,)),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded, color:Colors.deepOrange),
                  hintText: "example@gmail.com",
                  hintStyle: GoogleFonts.ebGaramond(textStyle: h4),
                  labelText: "E-mail",
                  labelStyle: GoogleFonts.ebGaramond(textStyle: h4),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle, color:Colors.deepOrange),
                  hintText: "Enter your username",
                  hintStyle: GoogleFonts.ebGaramond(textStyle: h4),
                  labelText: "Username",
                  labelStyle: GoogleFonts.ebGaramond(textStyle: h4),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded, color: Colors.deepOrange),
                  hintText: "**************",
                  labelText: "Password",
                  labelStyle: GoogleFonts.ebGaramond(textStyle: h4),
                  fillColor: Colors.deepOrange,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded, color: Colors.deepOrange),
                  hintText: "**************",
                  labelText: "Confirm Password",
                  labelStyle: GoogleFonts.ebGaramond(textStyle: h4),
                  fillColor: Colors.deepOrange,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 45,
            width: 150,
            child: ElevatedButton(
              onPressed: (){},
              child: Text(" Register ", style: GoogleFonts.ebGaramond(textStyle: h3),),
            ),
          ),


        ],
      ),
    );
  }
}
