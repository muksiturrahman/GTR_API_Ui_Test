import 'package:flutter/material.dart';
import 'package:gtr_test/widgets/NavBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Image.asset('assets/images/pageView/PageView1.JPG'),
          Image.asset('assets/images/pageView/PageView2.JPG'),
          Image.asset('assets/images/pageView/PageView3.JPG'),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NavBar()));
              },
              child: Text('Skip',style: TextStyle(fontSize: 18,color: Colors.black54),),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: Colors.black54,
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
