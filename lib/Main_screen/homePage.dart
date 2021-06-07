//import 'package:eximpapa/Main_screen/Camera_gallery_assess.dart';









import 'package:eximpapa/Main_screen/Camera_gallery_assess.dart';
import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:eximpapa/Main_screen/loginPage.dart';
import 'package:eximpapa/Main_screen/nesttedTopTabbar.dart';
import 'package:eximpapa/Main_screen/searchPage.dart';
import 'package:eximpapa/Main_screen/selfProfilePage.dart';
import 'package:eximpapa/Main_screen/visitProfile.dart';
import 'package:eximpapa/TabPages/Self_Postadd.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {


  TabController _tabController;


  @override
  void initState() {
    super.initState();
    //LogoutUser();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomPadding: false,
      key: scaffoldKey,
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),

            onPressed: () =>
            {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CameraGallery()),
              )
            },
            //debugPrint("item Selected"),
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            DrawerHeader(
                child: new Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 15)),
                    CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage('assets/pro_img.jpg'),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "eximpapa@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),

            /*
         new UserAccountsDrawerHeader(

           accountName: new Text("Joy Roy",style: TextStyle(color: Colors.black54,fontSize: 17),
           ),
           accountEmail: new Text("flutter@gmail.com",style: TextStyle(color: Colors.black54,fontSize: 15),),
           currentAccountPicture: new CircleAvatar(
             backgroundImage: AssetImage('assets/pro_img.jpg'),
           ),
         ),*/
            CustomListTitle(
                Icons.person_search,
                "Search ",
                    () =>
                {
                  /*
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => searchcategory()),
                )*/
                }),
            CustomListTitle(
                Icons.account_box,
                " Complete Profile",
                    () =>
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => completeprofile()),
                  )
                }),
            CustomListTitle(
                Icons.post_add,
                "Post your requirements",
                    () =>
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => VisitProfile()),
                  )
                }),
            CustomListTitle(Icons.feedback, "Feedback", () => {}),
            CustomListTitle(Icons.report, "Report & Abuse", () => {}),
            CustomListTitle(Icons.indeterminate_check_box, "Terms& Conditions", () => {}),
            CustomListTitle(Icons.contact_phone, "Contact us", () => {}),
            CustomListTitle(Icons.logout, "Logout", () =>
            {
            //  LogoutUser(),
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()),)
            })
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 5,
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white30
            // indicatorColor: Colors.white,
          ),
          labelColor: Colors.black87,
          unselectedLabelColor: Colors.black38,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, size: 30),
            ),
            Tab(
              icon: Icon(Icons.search, size: 30),
            ),
            Tab(
              icon: Icon(Icons.add_box_rounded, size: 30),
            ),
            Tab(
              icon: Icon(Icons.favorite, size: 30),
            ),
            Tab(
              icon: Icon(Icons.person_rounded, size: 30),
            )
          ],
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          NestedTabBar(),
          searchcategory(),
          SelfPostAdd(),
          Center(
            child: Text("Like"),
          ),
          SelfProfile(),
        ],
        controller: _tabController,
      ),
    );
  }
}


class CustomListTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTitle(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          splashColor: Colors.blueGrey,
          onTap: onTap,
          child: Container(
            height: 35,
            child: Row(
              children: <Widget>[
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
 Future<void>LogoutUser()async {
    var http;
    String response= await http.get('https://complete-auth-exim.herokuapp.com/api/signout');
    Map userId;
    var json;
    userId = json.decode(response);
    if(userId = null){
      userId.remove('token');
    }
  }


 */
