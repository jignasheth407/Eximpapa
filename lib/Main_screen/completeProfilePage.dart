import 'dart:convert';
import 'dart:ui';

import 'package:eximpapa/Main_screen/broker.dart';
import 'package:eximpapa/Main_screen/chaPage.dart';
import 'package:eximpapa/Main_screen/exporterProfile.dart';
import 'package:eximpapa/Main_screen/farmer.dart';
import 'package:eximpapa/Main_screen/freightForwarders.dart';
import 'package:eximpapa/Main_screen/homePage.dart';
import 'package:eximpapa/Main_screen/importer.dart';
import 'package:eximpapa/Main_screen/inspection.dart';
import 'package:eximpapa/Main_screen/insurance.dart';
import 'package:eximpapa/Main_screen/investor.dart';
import 'package:eximpapa/Main_screen/manufacturer.dart';
import 'package:eximpapa/Main_screen/shipping.dart';
import 'package:eximpapa/Main_screen/warehouse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class completeprofile extends StatefulWidget{
  @override
  //State<StatefulWidget> createState() {}
_completeprofileState createState()=> _completeprofileState();

}
class _completeprofileState extends State<completeprofile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //resizeToAvoidBottomPadding: false,
      body: new Stack(
        children: <Widget>[
          new Form(child: new Theme(data: new ThemeData(
            primarySwatch: Colors.grey,
          ),
              child: new Center(
            child: new Column(
             children: <Widget>[
            Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),),
               Container(
               child: new Text("Complete Profile",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 35,bottom: 5),
                 child: Container(
                   width: 250,
                   height: 48,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black54),
                           borderRadius: BorderRadius.circular(15 ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(15 ),
                       ),
                       // labelText: 'Enter Name Here',
                       hintText: 'First Name Auto fill',
                     ),
                     autofocus: false,
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   width: 250,
                   height: 48,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black54),
                         borderRadius: BorderRadius.circular(15 ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       // labelText: 'Enter Name Here',
                       hintText: 'Last Name Auto Fill',
                     ),
                     autofocus: false,
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   width: 250,
                   height: 48,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black54),
                         borderRadius: BorderRadius.circular(15 ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       // labelText: 'Enter Name Here',
                       hintText: 'Email Address Auto Fill',
                     ),
                     autofocus: false,
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   width: 250,
                   height: 48,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black54),
                         borderRadius: BorderRadius.circular(15 ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       // labelText: 'Enter Name Here',
                       hintText: 'Mobile No with Code Auto Fill',
                     ),
                     autofocus: false,
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   width: 250,
                   height: 48,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black54),
                         borderRadius: BorderRadius.circular(15 ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       // labelText: 'Enter Name Here',
                       hintText: 'Where Do you live City',
                     ),
                     autofocus: false,
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   width: 250,
                   height: 48,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black54),
                         borderRadius: BorderRadius.circular(15 ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       // labelText: 'Enter Name Here',
                       hintText: 'Country',
                     ),
                     autofocus: false,
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(
                   right: 125,top: 10
                 ),
                 child: Text(
                   "Profile Selected list",
                   style: TextStyle(color: Colors.black54),
                 ),
               ),



               Padding(
            padding: const EdgeInsets.only(left: 58,right: 58,bottom: 10,top: 5),
            child: Container(
              height: 43,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[


                  /*
                  Container(
                    width: 100,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Buy Leads",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => importer()),
                        );
                      },
                    ),
                  ),
                  */

                  Padding(
                      padding: EdgeInsets.only(left: 0, right: 5)),
                  Container(
                    width: 110,
                    // color: Colors.white,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Exporter",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        , color: Colors.black,),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Exporter()),
                        );
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 110,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Importer",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold, color: Colors.black,),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => importer()),
                        );
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 110,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Farmer",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold, color: Colors.black,),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => farmer()),
                        );
                      },
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),

                  Container(
                    width: 110,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Manufacture",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Manufacture()),
                        );
                      },
                    ),
                  ),



                  Padding(

                      padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 110,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "CHA",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          color: Colors.black,),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chaPage()),
                        );
                      },
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),

                  Container(
                    width: 110,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Inspection",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => inspection()),
                        );
                      },
                    ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),

                  Container(
                    width: 110,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Freight Forwarder",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => freightforwarder()),
                        );
                      },
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),

                  Container(
                    width: 110,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Shipping Line",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeIn
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => shippinglines()),
                        );
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),

                  Container(
                    width: 110,

                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "WareHouse",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => warehouse()),
                        );
                      },
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 110,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Broker",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => broker()),
                        );
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 110,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Investor",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => investor()),
                        );
                      },
                    ),
                  ),



                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                      width: 110,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Insurance Provider",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => insurance()),
                        );
                      },
                    ),
                  ),



                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 12)),
                  Container(
                    width: 110,
                    child: OutlineButton(
                      color: Colors.transparent,
                      child: Text(
                        "Financier",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // highlightedBorderColor: Colors.white,
                      borderSide:
                      BorderSide(color: Colors.black87, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => investor()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
        ),
               new Padding(
                 padding: EdgeInsets.all(20),
               ),
               new OutlineButton(
                 color: Colors.transparent,
                 child: Text(
                   "Submit",
                   style: TextStyle(
                       fontSize: 22.0, fontWeight: FontWeight.bold,color: Colors.black87),
                 ),
                 // highlightedBorderColor: Colors.white,
                 borderSide: BorderSide(color: Colors.black87, width: 2),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15)),
                 padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                 onPressed: () {

                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => HomePage()),//HomePage()
                   );
                 },
               ),
             ],
            ),
              ) ))])
              );
  }
}