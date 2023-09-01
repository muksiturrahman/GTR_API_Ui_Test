import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/pageview1.png',
      'assets/images/pageview1.png',
      'assets/images/pageview1.png',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ],
                ),
              ),
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/icons/menus.png',
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
        title: Image.asset(
          'assets/icons/Group 4141.png',
          width: 80,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20,right: 20,bottom: 10),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.6,
                    viewportFraction: 1.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20,right: 20),
            child: SizedBox(
              height: 130,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 0.5,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2))
                              ],
                            ),
                            child: Image.asset('assets/images/pageview1.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'All',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 0.5,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2))
                              ],
                            ),
                            child: Image.asset('assets/images/pageview1.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Fruits',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 0.5,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2))
                              ],
                            ),
                            child: Image.asset('assets/images/pageview1.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Vegetable',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 0.5,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2))
                              ],
                            ),
                            child: Image.asset('assets/images/pageview1.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Fish',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 0.5,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2))
                              ],
                            ),
                            child: Image.asset('assets/images/pageview1.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Fish',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        SizedBox(
          height: 500,
          child: ListView.builder(
    itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: const Offset(0, 2))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/pageview1.png'),
                          // SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fruits and Vegetables',
                                style: TextStyle(fontWeight: FontWeight.normal),),
                              Text('datadatadatadatadatadatadatadata',
                                style: TextStyle(color: Colors.grey.shade500),),
                              Text('datadatadatadatadatadatadatadatadatadata',
                                style: TextStyle(color: Colors.grey.shade500),),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios, color: Colors.green, size: 35,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              );
            }
          ),
        ),
        ],
      ),
    );
  }
}
