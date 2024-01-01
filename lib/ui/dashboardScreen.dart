import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List<double> prices = [20.0, 15.0, 30.0, 20.0, 15.0, 30.0];
    List<String> names = [
      'Product A',
      'Product B',
      'Product C',
      'Product A',
      'Product B',
      'Product C'
    ];
    List<String> images = [
      'assets/images/frame1.png',
      'assets/images/frame2.png',
      'assets/images/frame3.png',
      'assets/images/frame1.png',
      'assets/images/frame2.png',
      'assets/images/frame3.png',
    ];
    List<String> myImages = [
      'assets/images/myimage.jpg',
      'assets/images/myimage.jpg',
      'assets/images/myimage.jpg',
      'assets/images/myimage.jpg',
      'assets/images/myimage.jpg',
      'assets/images/myimage.jpg',
    ];
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: Colors.yellow,
            title: Text(
              'Home',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    print('Notifications');
                  },
                  icon: Icon(Icons.notification_add))
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(28.0),
                    bottomLeft: Radius.circular(28.0)))),
        drawer: Drawer(
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(4.0),
                      width: screenWidth * 0.6,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Text(
                                'Special Offer',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Discount 25 %',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Oder Now!',
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(4.0),
                      height: screenWidth * 0.3,
                      width: screenWidth * 0.2,
                      child: Image.asset(
                        'assets/images/frame3.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red,
                  padding: EdgeInsets.only(top: 8, left: 19),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: screenWidth * 0.4,
                              child: Text(
                                'Top of week',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 18),
                              width: screenWidth * 0.4,
                              alignment: Alignment.topRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text('See all'),
                              )),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.98,
                        height: screenWidth * 0.4,
                        child: ListView.builder(
                          itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    width: 90.0, // Adjust the width as needed
                                    height: 60.0, // Adjust the height as needed
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '\$${prices[index]}',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.orange,
                  padding: EdgeInsets.only(top: 8, left: 19),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: screenWidth * 0.4,
                              child: Text(
                                'Best of vendors',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 18),
                              width: screenWidth * 0.4,
                              alignment: Alignment.topRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text('See all'),
                              )),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.98,
                        height: screenWidth * 0.4,
                        child: ListView.builder(
                          itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    width: 90.0, // Adjust the width as needed
                                    height: 60.0, // Adjust the height as needed
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '\$${prices[index]}',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16.0)),
                  padding: EdgeInsets.only(top: 8, left: 19),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: screenWidth * 0.4,
                              child: Text(
                                'Authors',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 18),
                              width: screenWidth * 0.4,
                              alignment: Alignment.topRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text('See all'),
                              )),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: screenWidth * 0.4,
                        child: ListView.builder(
                          itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(


                            onTap: (){

                              print('Basit murad $index' );
                            },
                                child: Card(
                                  margin: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          width: 90.0, // Adjust the width as needed
                                          height: 70.0,
                                          child:
                                          Container(
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(myImages[index]),
                                              backgroundColor: Colors.orange,
                                            ),
                                          )


                                      ),
                                      Text(
                                        names[index],
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '\$${prices[index]}',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),



                                )

                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
    // TODO: implement build
  }
}
