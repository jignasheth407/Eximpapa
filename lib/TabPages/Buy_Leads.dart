import 'dart:ui';

import 'package:eximpapa/TabPages/Buy_Leads_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuyLeads extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}

  _BuyLeads createState() => _BuyLeads();
}

class _BuyLeads extends State<BuyLeads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Gift Boxes",
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.watch_later_outlined),
                            onPressed: null),
                        Text(
                          "2 hrs ago",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/pro_img.jpg'),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Sweden",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "13 may 2021",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: <Widget>[
                    Text(
                      "I am looking for the diffrent Gift boxes kindly \nshare the design that you have",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: <Widget>[
                    Text(
                      "Quantity :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      " 20 MT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: <Widget>[
                    Text(
                      "Part of Discharge :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      " Sweden",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Available :",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.phone_android),
                        Text("Mobile"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.phone),
                        Text("Phone"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.email_outlined),
                        Text("Email"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.web),
                        Text("Web"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.business),
                        Text("Business"),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                RaisedButton(
                    color: Colors.blueAccent,
                    child: Text(
                      "Click details Page",
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsBuyLeads()));
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
