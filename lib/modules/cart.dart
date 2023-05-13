import 'dart:core';
import 'package:flutter/material.dart';
import 'Shoes.dart';

class Cart extends ChangeNotifier {
  //list of Shoes for sale
  final List<Shoes> shoeShop = [
      Shoes(
          name: 'Zoom Freak',
          ImagePath: 'lib/images/shoes 1.jpg',
          description: 'The forward-thinking design of his signature shoes',
          price: '236'),
      Shoes(
          name: 'Air Jordans',
          ImagePath: 'lib/images/shoes 2.jpg',
          description:
              'You\'ve got the hops and the speed up in shoes that enhance the performance.',
          price: '220'),
      Shoes(
          name: 'KD Treys',
          ImagePath: 'lib/images/shoes 3.jpg',
          description:
              'A secure midfoot strap is suited for scoring bings and defensive',
          price: '240'),
      Shoes(
          name: 'Zoom Freak',
          ImagePath: 'lib/images/shoes 4.jpg',
          description:
              'Bouncy cushioning is paired with soft yet supportive form for research purposes',
          price: '190'),
    ];

  //list of item in order in user cart
  List<Shoes> userCart = [];

  //get list of shoes for sale
  List<Shoes> getShoeList() {
    return shoeShop;
  }

  //get cart
  List getUserCart() {
    return userCart;
  }

  //add items to cart

  void addItemToCart(Shoes shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemsFromCart(Shoes shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}