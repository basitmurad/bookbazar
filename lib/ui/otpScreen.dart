import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  final String name;
  final String email;
  final String password;

   OtpScreen({super.key, required this.name, required this.email, required this.password});
  @override
  Widget build(BuildContext context) {


    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 60.0, left: 18.0, right: 18.0),
                child: Text('Verification Email',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold , color: Colors.black),),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 6.0, left: 18.0, right: 18.0),
                child: Text(

                  'Please enter the code we just sent to email \nJohndoe@gmail.com',
                  textAlign: TextAlign.center,

                ),

              ),
            ),
            Center(
              child:

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4 , right: 8 ),
                          child: SizedBox(
                            height: 64,
                            width: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)))),
                              onChanged: (value) {
                                if(value.isEmpty)
                                  {
                                    FocusScope.of(context).previousFocus();
                                  }
                                else if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4 , right: 8 ),
                          child: SizedBox(
                            height: 64,
                            width: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)))),
                              onChanged: (value) {
                                if(value.isEmpty)
                                {
                                  FocusScope.of(context).previousFocus();
                                }
                                else if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4 , right: 8 ),
                          child: SizedBox(
                            height: 64,
                            width: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)))),
                              onChanged: (value) {
                                if(value.isEmpty)
                                {
                                  FocusScope.of(context).previousFocus();
                                }
                                else if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4  ),
                          child: SizedBox(
                            height: 64,
                            width: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)))),
                              onChanged: (value) {
                                if(value.isEmpty)
                                {
                                  FocusScope.of(context).previousFocus();
                                }
                                else if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
    margin: EdgeInsets.only(top: 40),
                    child: SizedBox(

                      width: screenWidth*0.6,
                      height: 40,
                      child: ElevatedButton(onPressed: (){

                        final message = SnackBar(content: Text('This is snackbar'));

                        ScaffoldMessenger.of(context).showSnackBar(message);



                        print('user verified successfully');
                      }, child: Text('Verify')),
                    ),
                  )
                ],
              ),


            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
