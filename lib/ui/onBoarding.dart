import 'package:bookbazar/ui/login.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

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
    ' Discover new worlds, join a vibrant reading\ncommunity. Start your reading adventur\neffortlessly with us.',
    'Let us be your guide to the perfect\nread. Discover books tailored to your tastes for a \ntruly rewarding experience.',
    'Ready to embark on a quest for inspiration\nand knowledge? Your adventure begins now.\nLet go'
  ];

  int currentIndex = 0;
  bool showButton = false; // Initially hide the button

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showButton= images.length==2;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Set this to false to remove the back arrow

        actions: [TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));

        }, child: Text('Skip'))],
        // title: Text('Onboarding Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 500,
              color: Colors.white60,
              child: PageView.builder(itemCount: images.length,
                itemBuilder:  (context,index)
                {
                  return buildPageItem(index);
                }

                ,
                onPageChanged: (int index){
                // if(index==2)
                //   {
                //     Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
                //   }


                },
              ),
            ),


        Container(
          margin: EdgeInsets.all(18.0),
          child: SizedBox(
            width: screenWidth*0.7,
              child: ElevatedButton(onPressed: (){


                Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));

              }, child: Text('Get Started'))),
        )
          ],
        ),
      ),
    );
  }

  Widget buildPageItem(int index) {
    double screenWidht = MediaQuery.of(context).size.width;

    double imageSize = screenWidht * 0.8;
    return SingleChildScrollView(
      child: Column(

        children: [
          Image.asset(

            'assets/${images[currentIndex]}',
            // height: imageSize,
         //   width: imageSize,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              texts[currentIndex],
              style: TextStyle(fontSize: 16.8, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text2[currentIndex],
              style: TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),

    );
  }
}
