import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_project/utils/style.dart';
import 'package:food_project/screens/registration_page.dart';
import 'home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: GoogleFonts.ebGaramond(textStyle: h1)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/login.png"),
          SizedBox(
            height: 10,
          ),
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
          SizedBox(height: 15,),
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
          SizedBox(height: 15),
          Container(
            height: 45,
            width: 150,
            child: ElevatedButton(
              onPressed: (){},
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text(" Log In ", style: GoogleFonts.ebGaramond(textStyle: h3),)),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have account ? ", style: GoogleFonts.ebGaramond(textStyle: h4)),
              SizedBox(width: 3,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>Register()));
                },
                child: Text("Register", style: GoogleFonts.ebGaramond(textStyle: h4, color: Colors.red[900]),),
              )
            ],
          )

        ],
      ),
    );
  }
}
