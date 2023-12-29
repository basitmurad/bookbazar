import 'package:bookbazar/ui/dashboardScreen.dart';
import 'package:bookbazar/ui/login.dart';
import 'package:bookbazar/ui/otpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {


  final GlobalKey<_SignUp> signUpKey;

  SignUp({Key? key, required this.signUpKey}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  var textEmail = TextEditingController();
  var textPassword = TextEditingController();
  var textName = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEmail.dispose();
    textPassword.dispose();
    textName.dispose();
    super.dispose();
  }

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
                        'Create account and choose favorite menu',
                        style: TextStyle(color: Colors.grey, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text('Name'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textName,
                        decoration: InputDecoration(
                            hintText: 'Enter name',
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
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text('Email'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textEmail,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text('Password'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textPassword,
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
                    Container(
                      height: 3,
                    ),
                    Container(
                      height: 3,
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
                              String name = textName.text.toString();
                              String email = textEmail.text.toString();
                              String password = textPassword.text.toString();

                              print(
                                  'Name: $name, Password: $password, Email: $email');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OtpScreen(
                                    name: name,
                                    password: password,
                                    email: email,
                                  ),
                                ),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.deepPurple)),
                            child: Text(
                              'Sign Up',
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account?',
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));

                                print('Login Screen');
                              },
                              child: Text('Sign In'))
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'By clicking Register,\n you agree to our ',
                              textAlign: TextAlign.center,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Terms and Data Policy.',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isPasswordValid(String password) {
    // Password regex: At least one uppercase letter, one lowercase letter, and one number, with a minimum length of 8 characters
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    return regex.hasMatch(password);
  }
}
