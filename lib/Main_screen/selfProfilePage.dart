

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelfProfile extends StatefulWidget{
  @override
 // State<StatefulWidget> createState() {}
  _SelfProfileState createState()=> _SelfProfileState();

}
class _SelfProfileState extends State<SelfProfile>{

  List<String> images = ["https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Form(child: new Theme(data: new ThemeData(),
              child: new Container(
                padding: EdgeInsets.only(top: 5,left: 12,right: 10,bottom: 10),
                child: new Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_box_outlined),
                          color: Colors.black,
                          iconSize: 25,
                        ),
                      ],
                    ),

                  Container(
                    padding: EdgeInsets.only(top: 10,left: 12,right: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 45, backgroundColor: Colors.white,
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
                                Text("02",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("My Lead",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
                      child: Center(
                        child: RaisedButton(
                          color: Colors.black12,
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                          // highlightedBorderColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.fromLTRB(55, 10, 55, 10),
                          onPressed: () {},
                        ),
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