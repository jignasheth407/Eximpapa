import 'dart:ui';
import 'package:eximpapa/TabPages/Buy_Leads.dart';
import 'package:eximpapa/TabPages/Home_AllCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NestedTabBar extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() {
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 14, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
    //  resizeToAvoidBottomPadding: false,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TabBar(
            controller: _nestedTabController,
            indicatorColor: Colors.white,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white10
                // indicatorColor: Colors.white,
                ),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black45,
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Buy Lead",
              ),
              Tab(
                text: "Exporters",
              ),
              Tab(
                text: "Importers",
              ),
              Tab(
                text: "Farmers",
              ),
              Tab(
                text: "Manufactures",
              ),
              Tab(
                text: "CHA",
              ),
              Tab(
                text: "Inspection",
              ),
              Tab(
                text: "Fright Forwarder",
              ),
              Tab(
                text: "Shipping Lines",
              ),
              Tab(
                text: "Ware Houses",
              ),
              Tab(
                text: "Borkers",
              ),
              Tab(
                text: "Investors",
              ),
              Tab(
                text: "Freelancers",
              )
            ],
          ),
          Container(
            height: screenHeight * 0.75,
            // margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: TabBarView(
              controller: _nestedTabController,
              children: <Widget>[
                HomeAllcategory(),
                BuyLeads(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Exporter"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Importer"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Farmer"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Manufacture"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("CHA"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Inspection"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("CHA"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Fright Forwarder"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Shipping Line"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Broker"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Investor"),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text("Freelancer"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
