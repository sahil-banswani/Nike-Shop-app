import 'package:flutter/material.dart';
import 'package:nike_shop_app/modules/shoes.dart';

class CartItem extends StatefulWidget {
  Shoes shoe;
  CartItem({super.key, required this.shoe});

  // ignore: empty_constructor_bodies
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.ImagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
    );
  }
}
