
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:instagram/homebody.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/search.dart';

import 'bottomappbar.dart';
void main() {
  runApp(instagram());
}
class instagram extends StatefulWidget {
  @override
  _instagramState createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          leading: Icon(
            Icons.camera_enhance,
            color:Colors.black,
            size: 30.0,
          ),
          elevation: 2.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Image.asset("images/instagram.png",width: 125,height: 125,alignment: Alignment.centerRight,),
          ),
          actions: [
            Icon(
              Icons.send,
              color: Colors.black,
            )
          ],
        ),
        bottomNavigationBar:navgation(),
        body:list(),
      ),
    );
  }
}
class navgation extends StatefulWidget {
  @override
  _navgationState createState() => _navgationState();
}

class _navgationState extends State<navgation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 53.0,
      child: bottomappbar(),
    );
  }
}

