import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelfPostAdd extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}
  _SelfPoastAdd createState() => _SelfPoastAdd();
}

class _SelfPoastAdd extends State<SelfPostAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
                height: 570,
                //padding: EdgeInsets.only(left: 15,right: 15),
                child: new Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Padding(padding: EdgeInsets.only(left: 2)),
                        Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 15)),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage('assets/pro_img.jpg'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                              "Sweden",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 15)),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                          onPressed: () => {},
                        ),
                      ],
                    ),
                    /*
                    Image(
                      image: AssetImage('assets/btr_img.jpg'),
                      height: 320,
                      width: 350,
                      fit: BoxFit.cover,
                    ),*/
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/eb/1f/4e/eb1f4e853d72021d1a1e2425df4ad1cf.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 8)),
                            IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.comment,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.near_me_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 15)),
                        IconButton(
                          icon: Icon(
                            Icons.turned_in,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 15)),
                            Icon(
                              Icons.favorite,
                              size: 15,
                            ),
                            Text(
                              " 39 likes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 15)),
                        Text(
                          "100 Followers",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Eximpapa",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                              text:
                                  "Because there is no more space leftover in the row to distribute. mainAxisAlignment only redistributes the remaining space",
                              style: TextStyle(color: Colors.black)),
                        ]),
                      ),
                    ),
                   Row(
                     children: <Widget>[
                       Padding(padding: EdgeInsets.only(left: 15,top: 15)),
                       Text("View all Comment..",style: TextStyle(color: Colors.black38),),
                     ],
                   ),
                    /*
                    Row(
                      children: <Widget>[
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30.0),
                            ),filled: true,
                           fillColor: Colors.black26,
                            hintText: 'Write a comment',
                            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                          ),

                        ),),
                      ],
                    )*/
                  ],
                ));
          }),
    );
  }
}
