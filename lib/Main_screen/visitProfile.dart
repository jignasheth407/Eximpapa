

import 'package:eximpapa/Main_screen/homePage.dart';
import 'package:flutter/material.dart';


class VisitProfile extends StatefulWidget{
  @override
  //State<StatefulWidget> createState() {}
  _VisitProfileState createState()=> _VisitProfileState();
}
class _VisitProfileState extends State<VisitProfile>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          new Form(child: new Theme(data: new ThemeData(),
            child: new Container(
              padding: EdgeInsets.only(top: 40,left: 25,right: 10,bottom: 10),
              child: new Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        "User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_outlined),
                        color: Colors.black,
                        iconSize: 25, onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage() // HomePage()
                      )); },
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,left: 12,right: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50, backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/pro_img.jpg'),
                        ),
                        Column(
                          children: <Widget>[
                            Text("100",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text("Post",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("20",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text("Follower",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 12,right: 10,bottom: 10),
                    child: Column(
                      children: <Widget>[
                        Text("About Business : Business is the activity of making one's living or making money by producing or buying and selling products (such as goods and services)",
                          style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                   child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 5,right: 5)),
                       RaisedButton(
                        color: Colors.black12,
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        // highlightedBorderColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.only(left: 5,right: 5)),
                       RaisedButton(
                        color: Colors.black12,
                        child: Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        // highlightedBorderColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                        onPressed: () {},
                      ),
                    ],
                   ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15,bottom: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                      Image(image: AssetImage('assets/btr_img.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                    ],
                  ),
                  /*
                    Container(
                        padding: EdgeInsets.all(16.0),
                        child: GridView.builder(
                          itemCount: images.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index){
                            return Image.network(images[index]);
                          },
                        )),*/
                  ],
              ),
            ),
          ),),
        ],
      ),

    ),
  );
  }



}