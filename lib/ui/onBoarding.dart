 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget{

  List<String> images = [
    'images/frame1.png',
    'images/frame2.png',
    'images/frame3.png',
  ];

  List<String> texts = [
    'Now reading books will be easier',
    'Your Bookish Soulmate Awaits',
    'Start Your Adventure',
  ];

List<String> text2 = [
  ' Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
  'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
  'Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let go'
];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return buildPageItem(index);
              },
            ),
          ),
          // buildIndicator(),
        ],
      ),
    );

  }

  Widget buildPageItem(int index) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/${images[index]}',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(

              texts[index],
              style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text2[index] , style: TextStyle(fontSize: 18 ,),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        images.length,
            (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? Colors.blue : Colors.grey,
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

