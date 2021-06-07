import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';



Future loginUser(String email, String password) async {
  String url = 'https://eximpapa.herokuapp.com/login';
  Map data = {"email": email, "password": password};
  //encode Map to JSON
  var body = json.encode(data);
  final response = await http.post(url,
      headers: {
        "Accept": "Application/json",
        "Content-Type": "application/json"
      },
      body: body);
  var convertedDatatoJson = jsonDecode(response.body);
  return convertedDatatoJson;
}


Future SignupUser(String fname, String lname, String email, String countrycode,
    String mobile, String password, String repassword) async {
  String url = 'https://eximpapa.herokuapp.com/signup';
  Map userdata = {
    "fname": fname,
    "lname": lname,
    "email": email,
    "countrycode": countrycode,
    "mobilenumber": mobile,
    "password": password,
    "repassword": repassword
  };
  print(userdata);
  var body = json.encode(userdata);
  final response = await http.post(url,
      headers: {
        "Accept": "Application/json",
         "Content-Type": "application/json"
      },
      body: body);

  var convertedDatatoJson = jsonDecode(response.body);
  return convertedDatatoJson;
}