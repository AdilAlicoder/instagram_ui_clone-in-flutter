import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          iconSize: 35.0,
          color: Colors.black,
        ),
        title: Text('Adil Ali',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pinimg.com/originals/82/30/b3/8230b3e601bd66e593423e8004058d84.jpg"),
                        radius: 48.0,
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Column(
                      children: [
                        Text("4",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                        SizedBox(height: 5.0),
                        Text('Post',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0,
                        ),),
                      ],
                    ),
                    SizedBox(width: 30.0),
                    Column(
                      children: [
                        Text("120",style: TextStyle(fontSize: 17.0,fontWeight:FontWeight.w600),),
                        SizedBox(height: 5.0),
                        Text('Follow',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0,
                        ),),
                      ],
                    ),
                    SizedBox(width: 30.0),
                    Column(
                      children: [
                        Text("120",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                        SizedBox(height: 5.0),
                        Text('Followers',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0,
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0), child: Text('- keep your soul clean',style: TextStyle(fontWeight: FontWeight.w600),)),
              Padding(padding: const EdgeInsets.all(5.0), child: Text('- Model',style: TextStyle(fontWeight: FontWeight.w600),)),
              Padding(padding: const EdgeInsets.all(5.0), child: Text('- Programmer',style: TextStyle(fontWeight: FontWeight.w600),)),
              Padding(padding: const EdgeInsets.all(5.0), child: Text('- ISB - PAK',style: TextStyle(fontWeight: FontWeight.w600),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      border: new Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width/1,
                    height: MediaQuery.of(context).size.height/18,
                    child: Center(child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17.0),),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    child: GridView.count(crossAxisCount: 3,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.shethepeople.tv/wp-content/uploads/2020/05/How-are-we-raising-our-boys.jpg"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8CHs2cFVULyiBMsX7zxYZnxI6_U12X7ugDw&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 220,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBnsURtcGfxfQ_1kQZHIAEpR_uhto_UUVVMA&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.shethepeople.tv/wp-content/uploads/2020/05/How-are-we-raising-our-boys.jpg"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8CHs2cFVULyiBMsX7zxYZnxI6_U12X7ugDw&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 220,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBnsURtcGfxfQ_1kQZHIAEpR_uhto_UUVVMA&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.shethepeople.tv/wp-content/uploads/2020/05/How-are-we-raising-our-boys.jpg"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8CHs2cFVULyiBMsX7zxYZnxI6_U12X7ugDw&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 220,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBnsURtcGfxfQ_1kQZHIAEpR_uhto_UUVVMA&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.shethepeople.tv/wp-content/uploads/2020/05/How-are-we-raising-our-boys.jpg"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8CHs2cFVULyiBMsX7zxYZnxI6_U12X7ugDw&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 220,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBnsURtcGfxfQ_1kQZHIAEpR_uhto_UUVVMA&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.shethepeople.tv/wp-content/uploads/2020/05/How-are-we-raising-our-boys.jpg"),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8CHs2cFVULyiBMsX7zxYZnxI6_U12X7ugDw&usqp=CAU"),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 220,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBnsURtcGfxfQ_1kQZHIAEpR_uhto_UUVVMA&usqp=CAU"),
                          ),
                        ),
                      ],),
                  ),
              ),
            ],
          ),
        ),
    );
  }
}