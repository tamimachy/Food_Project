import 'package:flutter/material.dart';
import 'package:food_project/screens/login_page.dart';
import 'package:food_project/screens/payment.dart';
import 'package:food_project/screens/splash_screen.dart';

void main(){
  runApp(FoodApp());
}
class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FoodBite",
      
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
