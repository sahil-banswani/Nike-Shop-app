import 'package:flutter/material.dart';
import 'package:nike_shop_app/modules/cart.dart';
import 'package:nike_shop_app/pages/shoe_tile.dart';
import 'package:provider/provider.dart';
import '../modules/cart.dart';

import '../modules/Shoes.dart';

class ShopPage extends StatefulWidget {
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add Shoes to the Cart
  void addShoeToCart(Shoes shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    //alert the user, then successfully added
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Search',
                  style: TextStyle(fontSize: 16),
                ),
                Icon(Icons.search),
              ],
            ),
          ),

          //message
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'everyone flies.. some fly longer than other',
                style: TextStyle(color: Colors.grey[600]),
              )),

          //hot pics
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Pics ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),

          //list of shoes
          const SizedBox(
            height: 10,
          ),

          //list of shoes for sale
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //get a shoe from shoe list
              Shoes shoe = value.getShoeList()[index];
              //return the shoe
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
            itemCount: value.getShoeList().length,
          )),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
