import 'package:flutter/material.dart';
import 'package:nike_shop_app/modules/shoes.dart';
import 'package:nike_shop_app/pages/shop_page.dart';
import 'package:provider/provider.dart';
import '../components/cart_items.dart';
import '../modules/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(children: [
                //heading
                const Text(
                  'My Cart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      
                    itemBuilder: (context, index) {
                      Shoes shoes = value.getUserCart()[index];
                      return CartItem(shoe: shoes);
                }
            )
          ),
  ])));
  }
}
