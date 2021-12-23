import 'package:flutter/material.dart';

class Categories{
  final String img;
  final String name;
  Categories({required this.img,required this.name});

  List<Categories>cat=[
    Categories(img: "2.png", name: "Pizza"),
    Categories(img: "3.png", name: "Burger"),
    Categories(img: "4.png", name: "HotDog"),
    Categories(img: "5.png", name: "Dink"),
    Categories(img: "6.png", name: "Chocolate"),
  ];
}
