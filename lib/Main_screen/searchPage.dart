import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class searchcategory extends StatefulWidget {
  @override

  _searchcategoryState createState() => _searchcategoryState();
}

class _searchcategoryState extends State<searchcategory> {
  TextEditingController controller = new TextEditingController();
  String filter = '';

  List<String> list = [
    'Importer',
    'Exporter',
    'Broker',
    'Buyer',
    'Supplier',
    'Producer',
    'Farmer',
    'Manufacture',
    'International Buying Agent',
    'Transporter',
    'Investor',
    'Financier',
    'WareHouse',
    'Logistics',
    'Cold Storage',
    'Insurance',
    '3rd Party Inspection',
    'Container',
    'Quality Control',
    'Custom House',
    'Fright Forwarder',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  padding:
                  EdgeInsets.only(top: 10, left: 15, right: 5, bottom: 5),
                  width: double.infinity,
                  color: Colors.white,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      labelText: ' Search Category ',
                      labelStyle: TextStyle(fontSize: 17.0,color: Colors.black),
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.black12,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.8),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(25.8),
                        borderSide: BorderSide(color: Colors.white),
                      ),

                    ),

                  ),

                ),

              ),
              Container(
                height: 60,
                // color: Color.fromRGBO(22, 22, 221, 1),
                color: Colors.white,
                padding: EdgeInsets.only(top: 10, right: 15),
                child: Icon(Icons.search, color: Colors.black, ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (ctx, index) {
                  return list[index]
                      .toLowerCase()
                      .contains(filter.toLowerCase())
                      ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 10.0),
                    //  Text(list[index])
                    child: Text(
                      list[index],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )
                      : SizedBox.shrink();
                }),
          ),
        ],
      ),
    );
  }
}







