
import 'dart:ui';

import 'package:eximpapa/Main_screen/homePage.dart';
import 'package:eximpapa/TabPages/Buy_Leads.dart';
import 'package:flutter/material.dart';

class DetailsBuyLeads extends StatefulWidget{
  @override
 // State<StatefulWidget> createState() {}
    _DetailsBuyLeads createState()=> _DetailsBuyLeads();

}
class _DetailsBuyLeads extends State<DetailsBuyLeads>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));// HomePage()
          },
        ),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/black_exim.png',
          fit: BoxFit.contain,
          height: 30,
        ),
      ),
      body: new Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: new Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 45,left: 30,right: 30)),
                Text("Buy Leads",
                  textAlign: TextAlign.center,
                style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold,fontSize: 32),),


                Padding(padding: EdgeInsets.only(top: 60)),
                Row(
                children: <Widget>[
                  Text("Gift Boxes",
                    style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
                ),

                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/pro_img.jpg'),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Sweden",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "13 may 2021",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ), Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: <Widget>[
                    Text(
                      "I am looking for the diffrent Gift boxes\nkindly share the design that you have",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
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
                        fontSize: 18,
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
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      " Sweden",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
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
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                Padding(padding: EdgeInsets.only(top: 20,bottom: 10)),
                Text("Get buyer contact details and via e-mail ans SMS",textAlign: TextAlign.center,

                style: TextStyle(color: Colors.black,fontSize: 22),),
                Padding(padding: EdgeInsets.only(bottom: 25)),
                Text("Price 400",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 35),),
                Padding(padding: EdgeInsets.only(top: 25)),
                RaisedButton(
                    color: Colors.blueAccent,
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsBuyLeads()));
                    }),
              ],
            ),
            ),
        ],
      ),
    );
  }
}