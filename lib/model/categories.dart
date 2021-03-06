import 'package:flutter/material.dart';

class Categories{
  final String img;
  final String name;
  Categories({required this.img,required this.name});
}
List<Categories>cat=[
  Categories(img: "assets/images/c_pizza.png", name: "Pizza"),
  Categories(img: "assets/images/bur.png", name: "Burger"),
  Categories(img: "assets/images/fanta.png", name: "Drink"),
  Categories(img: "assets/images/cake.png", name: "Cake"),
  Categories(img: "assets/images/chocolate.png", name: "Chocolate"),
];

class Popular{
  final String name;
  final String image;
  final double price;

  Popular({required this.name,required this.image, required this.price});

}

List<Popular>pop=[
  Popular(name: "Pepperoni Pizza", image: "assets/images/p_pizza.png", price: 9.76),
  Popular(name: "Burger", image: "assets/images/burgers.png", price: 8.79),
  Popular(name: "Drinks", image: "assets/images/3_drink.png", price: 5.55),
  Popular(name: "Cakes", image: "assets/images/3_drink.png", price: 10.75),
  Popular(name: "Chips", image: "assets/images/chip.png", price: 5.60),
  Popular(name: "Ice Cream", image: "assets/images/ice.png", price: 7.85),
  Popular(name: "Lollipop", image: "assets/images/lollipop.png", price: 12.75),
];