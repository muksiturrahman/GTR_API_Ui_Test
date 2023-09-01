import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  const CustomGrid({super.key});

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          mainAxisExtent: 220,
          crossAxisSpacing: 15),
      itemBuilder: (context, index) {
        return
          Container(
            height: MediaQuery.of(context).size.height /5,
            width: MediaQuery.of(context).size.width /2.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(0, 2))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                      width: double.infinity,
                      child: Image.asset('assets/images/pageview1.png',fit: BoxFit.fill,),
                  ),
                  Text("Broccoli flower",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  Text(
                    "60 TK",
                    style: TextStyle(color: Colors.green),
                  ),
                  Divider(),
                  Text('Add to cart',style: TextStyle(color: Colors.green),)
                ],
              ),
            ),
          );
      },
    );;
  }
}
