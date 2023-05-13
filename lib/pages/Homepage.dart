import 'package:flutter/material.dart';
import 'package:nike_shop_app/components/bottom_nev_bar.dart';
import 'package:nike_shop_app/pages/cart_page.dart';
import 'package:nike_shop_app/pages/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //this slected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will uodate our selected index
  //when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List _pages = [
    //shop page
    ShopPage(),

    //CartPage
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: MyBotoomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }),
          ),
        ),
        drawer: Drawer(
            backgroundColor: Colors.grey[900],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 250,
                        height: 175,
                        child: DrawerHeader(
                            //logo
                            child: Image.asset(
                          'lib/images/logo.png',
                          color: Colors.white,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(color: Colors.grey.shade600),
                      ),

                      //other pages
                      const Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Home',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: ListTile(
                          leading: Icon(
                            Icons.info,
                            color: Colors.white,
                          ),
                          title: Text(
                            'About',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 330,
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ])),
        body: _pages[_selectedIndex]
    );
  }
}
