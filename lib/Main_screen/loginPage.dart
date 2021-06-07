import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:eximpapa/Api/api.dart';
import 'package:eximpapa/Main_screen/forgetPasswordPage.dart';
import 'package:eximpapa/Main_screen/homePage.dart';
import 'package:eximpapa/Main_screen/signupPage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String message = '';

  ///// first code api call

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: scaffoldKey,
      backgroundColor: Colors.white,
      // resizeToAvoidBottomPadding: false,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Form(
            //  key: globalFromKey,
            key: _formKey,
            child: new Theme(
              data: new ThemeData(
                  // brightness: Brightness.dark,
                  primarySwatch: Colors.grey),
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      //height: 190,
                      width: 200,
                      child: Image.asset(
                        'assets/new_exim.png',
                        // fit: BoxFit.contain,
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(20, 25, 20, 10)),
                    Container(
                      width: 270,
                      // height: 30,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        //onSaved: (input) => requestModel.email = input,
                        controller: emailController,

                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Email cannot be empty';
                          }
                          return null;
                        },
                        //onSaved: (),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.black38)),
                        autofocus: false,
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 10)),
                    Container(
                      width: 270,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        // onSaved: (input) => requestModel.password = input,
                        controller: passwordController,

                        validator: (value) {
                          if (value.isEmpty) {
                            return 'password cannot be empty';
                          }
                          return null;
                        },
                        //  onSaved: ,
                        //obscureText: hidePassword,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.black38)),
                        autofocus: false,
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 5)),
                    new OutlineButton(
                        color: Colors.transparent,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        //  highlightedBorderColor: Colors.white,
                        borderSide: BorderSide(color: Colors.black54, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                        onPressed: () {
                          onPressed:
                          emailController.text == "" ||
                                  passwordController.text == ""
                              ? null
                              : () {
                                  signIn(emailController.text,
                                      passwordController.text);
                                };

                          /* async {
                          if (_formKey.currentState.validate()) {
                            var email = emailController.text;
                            var password = passwordController.text;
                            var response = await loginUser(email, password);
                            print(response);
                            if (response['status'] != 200) {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              });
                            } else {
                              print("not respomnsew"
                              );

                              /* if (response.containsKey('msg')) {
                             setState(() {
                              message = response['msg'];
                            });

                           } else if (response.containsKey('token')) {

                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) {
                                   return HomePage();
                               }));
                           }*/

                            }
                          } else {
                            setState(() {
                              message = 'login faild';
                            });
                          }*/
                        }),
                    Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
                    Text(message),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.black, fontSize: 17.0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(20, 45, 20, 5)),
                    new OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                      borderSide: BorderSide(color: Colors.black54, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

/*
  ///// first code api call
  bool ValidateAndSave() {
    final from = globalFromKey.currentState;
    if (from.validate()) {
      from.save();
      return true;
    }
    return false;
  } ///// first code api call*/

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': pass};
    var jsonResponse = null;
    var response = await http.post("https://eximpapa.herokuapp.com/login", body: data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (Route<dynamic> route) => false);
      }
    } else {
      print(response.body);
    }
  }
}
