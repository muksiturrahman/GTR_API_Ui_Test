import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.white,),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          Icon(Icons.shopping_cart_outlined,color: Colors.white,),
        ],
        title: Image.asset('assets/icons/Group 4141.png',width: 80,),
        centerTitle: true,
      ),
    );
  }
}
