import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routName = '/login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = true;
  final globalKey = GlobalKey<FormState>();
  Map<String, String> initData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              color: Colors.white,
              child: Form(
                key: globalKey,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: Image.asset(
                        'assets/images/flutter_banner.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Login to Your Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 25),

                    ////////////// Email section ////////////////
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        onSaved: (value) {
                          initData['email'] = value;
                        },
                        maxLength: 30,
                        initialValue: 'eng.islamyassin25@gmail.com',
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue[300]),
                          ),
                          labelText: 'Your Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    ////////////// password section ////////////////
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        onSaved: (value) {
                          initData['password'] = value;
                        },
                        initialValue: 'islamyassin',
                        obscureText: true,
                        maxLength: 30,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue[300]),
                          ),
                          labelText: 'Your Passworf',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 39),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.blue[900], width: 2)),
                      child: _isLoading
                          ? TextButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      child: Text('Or Sign In With'),
                    ),
                    SizedBox(height: 10),

                    /////////////////// Social Media icons ///////////////////////////

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Image.asset(
                                'assets/images/facebook.png',
                                fit: BoxFit.contain,
                              )),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                                child: Image.asset(
                                  'assets/images/twitter.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Image.asset(
                                'assets/images/google_icon.png',
                                fit: BoxFit.contain,
                              )),
                        ]),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Text('Dont Have As Account'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
