import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swap_app/widgets/Swaps.dart';
import 'package:swap_app/widgets/bottomnavbar.dart';
import 'package:swap_app/widgets/header%20container.dart';
import 'package:swap_app/widgets/options.dart';

class MyHomePage extends StatefulWidget {
  final title;

  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
        builder: (context, snapshot){
          var myData = json.decode(snapshot.data.toString());
          if (myData == null)
              return Container(
                child: Text("Loading"),
              );
          else
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderContainer(
                text: widget.title,
                height: height * 0.4,
              ),
              SizedBox(
                height: 15,
              ),
              Option(
                  title: "My Swaps",
                  option1: "ALL",
                  option2: "RECIEVED",
                  option3: "SENT"),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 8.0),
                child: Text("12 October, 2020", style: TextStyle(color: Colors.grey),),
              ),
              Expanded(
                child: Swaps(myData: myData,),
              )
            ],
          );
        },
      ),
    );
  }
}
