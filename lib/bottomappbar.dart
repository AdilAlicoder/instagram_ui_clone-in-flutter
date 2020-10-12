import 'package:flutter/material.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/search.dart';
class bottomappbar extends StatefulWidget {
  @override
  _bottomappbarState createState() => _bottomappbarState();
}

class _bottomappbarState extends State<bottomappbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 3.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 30.0,
            icon: Icon(
                Icons.home
            ),
            onPressed: (){},
          ),
          IconButton(
            iconSize: 30.0,
            icon: Icon(
                Icons.search
            ),
            onPressed: (){
              Route route=MaterialPageRoute(builder: (context) => search());
              Navigator.push(context, route);
            },
          ),
          IconButton(
            iconSize: 30.0,
            icon: Icon(
                Icons.add_circle_outline
            ),
            onPressed: (){},
          ),
          IconButton(
            iconSize: 30.0,
            icon: Icon(
                Icons.favorite_border
            ),
            onPressed: (){},
          ),
          InkWell(
            onTap: (){
              Route route=MaterialPageRoute(builder: (context) => profile());
              Navigator.push(context, route);
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pinimg.com/236x/4b/3d/31/4b3d31c8f98ba6a4d0aef95ba47ebc3a.jpg"),
              radius: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
