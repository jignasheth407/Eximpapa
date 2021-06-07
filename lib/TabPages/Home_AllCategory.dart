/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeAllcategory extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() {}
  _HomeAllCategory createState() => _HomeAllCategory();
}

class _HomeAllCategory extends State<HomeAllcategory> {
  Map users ;
  List data;

  Future<String> getJsonData() async {
    http.Response response =
        await http.get("https://imgupload-work.herokuapp.com/user");
    users = json.decode(response.body);
    setState(() {
      data = users["users"];
    });
    // debugPrint(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 580,
            child: new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 10)),
                        CircleAvatar(
                            //  backgroundImage: NetworkImage(data[index][""]),
                            ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Column(
                          children: <Widget>[
                            Text(
                              "${data[index]["fname"]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${data[index]["country"]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
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
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "${data[index]["productImg"]}",
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 0)),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.comment,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.near_me_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {},
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
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 10)),
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
                Padding(padding: EdgeInsets.only(top: 10, left: 5, right: 5)),
                Container(
                  child: new Text(
                    "${data[index]["description"]}",
                    style: TextStyle(color: Colors.black),
                  ),
                  // children: <Widget>[
                  //Padding(padding: EdgeInsets.only(left:5,top: 15,)),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 15, top: 15)),
                    Text(
                      "View all Comment..",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        /*
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
                              "https://i.pinimg.com/originals/39/72/64/39726448d9004202c0c640ba00a5ae7c.jpg"),
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
                            ), onPressed: () {  },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.comment,
                              color: Colors.black,
                              size: 25,
                            ), onPressed: () {  },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.near_me_outlined,
                              color: Colors.black,
                              size: 25,
                            ), onPressed: () {  },
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      IconButton(
                        icon: Icon(
                          Icons.turned_in,
                          color: Colors.black,
                          size: 25,
                        ), onPressed: () {  },
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
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                            text:
                                "Because there is no more space leftover in the row to distribute. mainAxisAlignment only redistributes the remaining space......",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                          text: "more"
                              ,style: TextStyle(color: Colors.blue),
                        )
                      ]),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 15, top: 15)),
                      Text(
                        "View all Comment..",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),/*
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 15,right: 15)),
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
        },*/
      ),
    );
  }
}*/
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class HomeAllcategory extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() {}
  _HomeAllCategory createState() => _HomeAllCategory();
}
class _HomeAllCategory extends State<HomeAllcategory> {
  Map users;
  List data;
  Future<String> getJsonData() async {
    http.Response response= await http.get("https://exim-home.herokuapp.com/api/home");
    users = json.decode(response.body);
    setState(() {
      data = users["users"];
    });
    debugPrint(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJsonData();
  }


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
                              "https://i.pinimg.com/originals/39/72/64/39726448d9004202c0c640ba00a5ae7c.jpg"),
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
                            ), onPressed: () {  },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.comment,
                              color: Colors.black,
                              size: 25,
                            ), onPressed: () {  },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.near_me_outlined,
                              color: Colors.black,
                              size: 25,
                            ), onPressed: () {  },
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      IconButton(
                        icon: Icon(
                          Icons.turned_in,
                          color: Colors.black,
                          size: 25,
                        ), onPressed: () {  },
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
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                            text:
                            "Because there is no more space leftover in the row to distribute. mainAxisAlignment only redistributes the remaining space......",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                          text: "more"
                          ,style: TextStyle(color: Colors.blue),
                        )
                      ]),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 15, top: 15)),
                      Text(
                        "View all Comment..",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),/*
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 15,right: 15)),
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
        },
      ),
    );


  }
}

