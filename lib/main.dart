import 'package:flutter/material.dart';
import 'package:food_project/screens/splash_screen.dart';

void main(){
  runApp(FoodApp());
}
class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}