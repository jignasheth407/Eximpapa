import 'dart:convert';
import 'dart:ui';
import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_picker/country_picker.dart';
import 'package:eximpapa/Api/api.dart';
import 'package:eximpapa/Main_screen/homePage.dart';
import 'package:eximpapa/Main_screen/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _countryCodeController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  String message = '';
  String selCountryCode = '+91';

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    _emailController.dispose();
    _countryCodeController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldKey,
      backgroundColor: Colors.white,
      // resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //   key: scaffoldKey,
            new Form(
                key: _formKey,
                child: new Theme(
                    data: new ThemeData(primarySwatch: Colors.grey),
                    child: new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 65)),
                          //35
                          Container(
                            width: 180,
                            child: Image.asset(
                              'assets/new_exim.png',
                              // fit: BoxFit.contain,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0, 10, 20, 10)),
                          //10
                          Container(
                            width: 265,
                            //  height: 42,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _fnameController,
                              //  onSaved: (value) => signUpRequestModel.fname=value,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'First Name cannot be empty';
                                }
                                return null;
                              },

                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // labelText: 'Enter Name Here',
                                  // hintText: 'First Name',
                                  // hintStyle: TextStyle(fontSize:16)
                                  hintText: "First Name",
                                  /*
                                errorStyle: TextStyle(color: Colors.blueAccent),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blueAccent),
                                  borderRadius: BorderRadius.circular(15),
                                ),*/
                                  contentPadding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10)),
                              autofocus: false,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          Container(
                            width: 265,
                            // height: 42,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _lnameController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Last Name cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // labelText: 'Enter Name Here',
                                  hintText: 'Last Name',
                                  contentPadding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10)),
                              autofocus: false,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          Container(
                            width: 265,
                            // height: 42,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _emailController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'email cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // labelText: 'Enter Name Here',
                                  hintText: 'Email ID',
                                  contentPadding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10)),
                              autofocus: false,
                            ),
                          ),

                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          Container(
                              width: 265,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                border: Border.all(
                                  color: Colors.black38,
                                  width: 1,
                                ),
                              ),
                              child: CountryCodePicker(
                                alignLeft: true,
                                onChanged: (CountryCode countryCode) {
                                  print("New Country selected: " +
                                      countryCode.toString());
                                  selCountryCode = countryCode.toString();
                                },
                              )),

                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          Container(
                            width: 265,
                            // height: 42,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _mobileController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Mobile cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // labelText: 'Enter Name Here',
                                  hintText: 'Mobile No',
                                  contentPadding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10)),
                              autofocus: false,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          // Container(
                          //   width: 265,
                          //   // height: 42,
                          //   child: TextFormField(
                          //     textAlign: TextAlign.center,
                          //     decoration: InputDecoration(
                          //         border: OutlineInputBorder(
                          //           borderSide: BorderSide(
                          //               color: Colors.black38, width: 2),
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         focusedBorder: OutlineInputBorder(
                          //           borderSide: BorderSide(color: Colors.black),
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         // labelText: 'Enter Name Here',

                          //         hintText: 'Get OTP',
                          //         contentPadding:
                          //             EdgeInsets.only(bottom: 10, top: 10)),
                          //     autofocus: false,
                          //   ),
                          // ),
                          // Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          // Container(
                          //   width: 265,
                          //   // height: 42,
                          //   child: TextFormField(
                          //     textAlign: TextAlign.center,
                          //     decoration: InputDecoration(
                          //         border: OutlineInputBorder(
                          //           borderSide: BorderSide(
                          //               color: Colors.black38, width: 2),
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         focusedBorder: OutlineInputBorder(
                          //           borderSide: BorderSide(color: Colors.black),
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         // labelText: 'Enter Name Here',
                          //         hintText: 'Enter OTP',
                          //         contentPadding:
                          //             EdgeInsets.only(bottom: 10, top: 10)),
                          //     autofocus: false,
                          //   ),
                          // ),
                          // Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          // Container(
                          //   width: 265,
                          //   // height: 42,
                          //   child: TextFormField(
                          //     textAlign: TextAlign.center,
                          //     decoration: InputDecoration(
                          //         border: OutlineInputBorder(
                          //           borderSide: BorderSide(
                          //               color: Colors.black38, width: 2),
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         focusedBorder: OutlineInputBorder(
                          //           borderSide: BorderSide(color: Colors.black),
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         // labelText: 'Enter Name Here',
                          //         hintText: 'Verify OTP',
                          //         contentPadding:
                          //             EdgeInsets.only(bottom: 10, top: 10)),
                          //     autofocus: false,
                          //   ),
                          // ),
                          // Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          Container(
                            width: 265,
                            //  height: 42,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _passwordController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'password cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // labelText: 'Enter Name Here',
                                  hintText: 'Password',
                                  contentPadding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10)),
                              autofocus: false,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          Container(
                            width: 265,
                            // height: 42,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _repasswordController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'repassword cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // labelText: 'Enter Name Here',
                                  hintText: 'Re-Password',
                                  contentPadding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10)),
                              autofocus: false,
                            ),
                          ),

                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                          new OutlineButton(
                              color: Colors.transparent,
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              //  highlightedBorderColor: Colors.white,
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  var fname = _fnameController.text;
                                  var lname = _lnameController.text;
                                  var email = _emailController.text;
                                  var countrycode = selCountryCode;
                                  var mobilenumber = _mobileController.text;
                                  var password = _passwordController.text;
                                  var repassword = _repasswordController.text;
                                  setState(() {
                                    message = 'wait......';
                                  });
                                  var response = await SignupUser(
                                      fname,
                                      lname,
                                      email,
                                      countrycode,
                                      mobilenumber,
                                      password,
                                      repassword);
                                  print(response);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return LoginPage();
                                  }));
                                  /*   if (response.containsKey('msg')) {
                                    setState(() {
                                       message = response['msg'];
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context) {
                                             return LoginPage();
                                           }));

                                    });
                                  }
                                else if (response.containsKey('email') ==200) {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return LoginPage();
                                    }));
                                  }*/
                                } else {
                                  setState(() {
                                    message = 'signup failed';
                                  });
                                }
                              }),
                          Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
                          //  Text(message),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Text(
                              "Already a Member? Sign in",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
