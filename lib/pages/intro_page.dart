import 'package:flutter/material.dart';
import 'package:nike_shop_app/pages/Homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(35.0)),
            //logo
            Container(width: 300, child: Image.asset('lib/images/logo.png')),

            const SizedBox(
              height: 68,
            ),
            //title
            const Text(
              'Just Do it',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 18,
            ),
            //sub title
            const Text(
              '  Brand new snekers and custom kicks with premium quality',
              style: TextStyle(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 48,
            ),
            //start new button
            GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage())),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(22),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
