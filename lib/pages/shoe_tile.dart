import 'package:flutter/material.dart';
import '../modules/Shoes.dart';

class ShoeTile extends StatelessWidget {
  Shoes shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: const EdgeInsets.only(left: 25),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          //image
          Expanded(
            child: ClipRRect(
              child: Image.asset(shoe.ImagePath),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
    
          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
    
          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //shoe name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
    
                    const SizedBox(
                      height: 5,
                    ),
                    //price
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                //plus button for adding shoes in cart
                GestureDetector(
                  onTap: onTap ,
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )
          //butoon to add to cart
        ]),
      ),
    );
  }
}
