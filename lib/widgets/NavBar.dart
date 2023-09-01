import 'package:flutter/material.dart';

import '../Screens/HomePage/HomePage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
  ];

  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 1,
        child: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomePage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: currentTab == 0 ? Colors.green : Colors.grey,
                      size: 30,
                    ),
                    Text('Home',
                        style: TextStyle(
                          color:
                          currentTab == 0 ? Colors.green : Colors.grey,
                        )),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.grey,
                    ),
                    Text('Cart',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                    Text('Favourite',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.person_outlined,
                        color: Colors.grey,
                      ),
                    Text('Me',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
