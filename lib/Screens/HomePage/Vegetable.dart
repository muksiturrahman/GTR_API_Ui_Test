import 'package:flutter/material.dart';
import 'package:gtr_test/widgets/customgrid.dart';

class Vegetable extends StatefulWidget {
  const Vegetable({super.key});

  @override
  State<Vegetable> createState() => _VegetableState();
}

class _VegetableState extends State<Vegetable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),color: Colors.white,
        ),
        title: Text('Fruits And Vegetables',style: TextStyle(color: Colors.white,fontSize: 18),),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart_outlined,color: Colors.white,),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(0, 2))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("25 Products Found",style: TextStyle(color: Colors.black54),),
                  Image.asset("assets/icons/filter.png",color: Colors.black54,),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomGrid(),
          ),
        ],
      ),
    );
  }
}
