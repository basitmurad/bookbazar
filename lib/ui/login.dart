import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align text to the start
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 18, left: 20, right: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Align text to the start
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Welcome Back 👋',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sign in to your account',
                        style: TextStyle(color: Colors.grey, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Email'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter email',
                            filled: true,
                            fillColor: Color(0xC2F1F0F0),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.5),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.5),
                              borderSide: BorderSide(color: Colors.red),
                            )),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Password'),
                    ), // Changed from 'Email' to 'Password'
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter password',
                            filled: true,
                            fillColor: Color(0xC2F1F0F0),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.5),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.5),
                              borderSide: BorderSide(color: Colors.red),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Forgot Password?  ',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: screenWidth * 0.5,
                          height: 40,
                          margin: EdgeInsets.only(
                              top: 30, left: 20, bottom: 20, right: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              print('Click');
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.deepPurple)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Center(

                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 2.0,
width: 100
                                ,                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Text(
                                    'Or with',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 2.0,
                                width: 100,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Container(
                    //   child: Center(
                    //     child: SingleChildScrollView(
                    //       scrollDirection: Axis.horizontal,
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Container(
                    //             height: 2.0,
                    //             width: screenWidht * 0.1,
                    //             color: Colors.grey,
                    //           ),
                    //           // Padding(
                    //           //   padding: const EdgeInsets.all(8.0),
                    //           //   child: Container(
                    //           //     width: screenWidht * 0.5,
                    //           //     child: Text(
                    //           //       'Or with',
                    //           //       style: TextStyle(
                    //           //           color: Colors.black12,
                    //           //           fontWeight: FontWeight.bold,
                    //           //           fontSize: 18),
                    //           //     ),
                    //           //   ),
                    //           // ),
                    //           Container(
                    //             height: 2.0,
                    //             width: screenWidht * 0.1,
                    //             color: Colors.grey,
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Container(
                      alignment: Alignment.center,
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 1, right: 1),
                        child: OutlinedButton(
                          onPressed: () {
                            print('Google');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png', // Replace with your asset path
                                width: 24.0, // Adjust the width as needed
                                height: 24.0, // Adjust the height as needed
                              ),
                              SizedBox(width: 16.0), // Adjust the spacing between icon and text
                              Text('Sign in with Google'),
                            ],
                          ),
                        ),
                      ),                    ),

                    Container(
                      alignment: Alignment.center,
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 1, right: 1),
                        child: OutlinedButton(
                          onPressed: () {
                            print('Google');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ios.png', // Replace with your asset path
                                width: 24.0, // Adjust the width as needed
                                height: 24.0,
                                // Adjust the height as needed
                              ),
                              SizedBox(width: 16.0), // Adjust the spacing between icon and text
                              Text('Sign in with Google'),
                            ],
                          ),
                        ),
                      ),                    ),
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
