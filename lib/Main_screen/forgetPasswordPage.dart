import 'package:eximpapa/Main_screen/loginPage.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget{
  @override
 // State<StatefulWidget> createState() {}
  _ForgetPaswordState createState()=> _ForgetPaswordState();

}
class _ForgetPaswordState extends State<ForgetPassword>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
    // resizeToAvoidBottomPadding: false,
     body:  new Stack(
       fit: StackFit.expand,
       children: <Widget>[
         new Form(child: new Theme(
             data: new ThemeData(
                 primarySwatch: Colors.grey
             ),
             child: new Center(
               child: new Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Container(
                     //height: 190,
                     width: 190,
                     child: Image.asset(
                       'assets/exim_papa.png',
                       // fit: BoxFit.contain,
                     ),
                   ),
                   Padding(padding: EdgeInsets.fromLTRB(20, 25, 20, 10)),
                   Container(
                     width: 270,
                     // height: 30,
                     child: TextField(
                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.black38,width: 2),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.black),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         // labelText: 'Enter Name Here',
                         hintText: 'Email',
                       ),
                       autofocus: false,
                     ),
                   ),
                   Padding(padding: EdgeInsets.fromLTRB(20, 25, 20, 5)),
                   new OutlineButton(
                     color: Colors.transparent,
                     child: Text(
                       "Enter",
                       style: TextStyle(
                           fontSize: 22.0, fontWeight: FontWeight.bold,color: Colors.black),
                     ),
                     //  highlightedBorderColor: Colors.white,
                     borderSide: BorderSide(color: Colors.black, width: 2),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)),
                     padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                     onPressed: () {
                       },
                   ),
                   Padding(padding: EdgeInsets.fromLTRB(20, 105, 20, 5)),
                   FlatButton(
                     onPressed: () {
                       Navigator.push(
                           context,MaterialPageRoute(builder: (context)=> LoginPage())
                       );
                       },
                     child: Text(
                       "Back",
                       style: TextStyle(
                           color: Colors.black54,
                           fontSize: 20.0,fontWeight: FontWeight.bold),
                     ),
                   ),

                 ],
               ),
             ),),),
       ],
     ),
   );
  }


}