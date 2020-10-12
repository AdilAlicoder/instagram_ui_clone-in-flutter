import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart'; // For File Upload To Firestore
import 'package:flutter/material.dart';
import 'model_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart'; // For Image Picker
import 'package:path/path.dart' as Path;
void main(){
  runApp(list());
}
class list extends StatefulWidget {
  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  List<model_class> user=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DatabaseReference reference=FirebaseDatabase.instance.reference().child("Imagess");
    reference.once().then((DataSnapshot snasshot){
      var keys=snasshot.value.keys;
      var Data=snasshot.value;
      user.clear();
      for(var pakkey in keys){
        model_class model = new model_class(
          Data[pakkey]['image'],
        );
        user.add(model);
        setState(() {

        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Stories',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0
              ),),
            ),
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.play_arrow,
                  ),
                ),
                Text(
                  "Watch all",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ],
        ),
            Container(
              height: 105.0,
                  child: user.length == 0 ? Text('No data') : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: user.length,
                    itemBuilder: (_, index){
                      return Ui(user[index].image);
                    },
                  )
               ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          borderRadius: new BorderRadius.all(new Radius.circular(37.0)),
                          border: new Border.all(
                            color: Colors.blue,
                            width: 4.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&w=1000&q=80"),
                          backgroundColor: Colors.white,
                          radius: 25.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Adil ali',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.more_vert
                )
              ],
            ),
            Image(
              width: MediaQuery.of(context).size.width,
              height: 290,
              fit: BoxFit.cover,
              image: NetworkImage("https://images.pexels.com/photos/1319911/pexels-photo-1319911.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          FontAwesomeIcons.heart,
                          size: 37.0,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Icon(
                          FontAwesomeIcons.comment,
                          size: 37.0,
                      ),
                      SizedBox(width: 22.0),
                      Icon(
                          FontAwesomeIcons.paperPlane,
                          size: 37.0,
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.bookmark,
                    size: 34.0,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Liked by adil ali and 4,500 others',style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('View all 105 comments'
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('adil ali',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('very nice pic'
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('jazab murad',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('heavy'
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          borderRadius: new BorderRadius.all(new Radius.circular(37.0)),
                          border: new Border.all(
                            color: Colors.blue,
                            width: 4.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
                          backgroundColor: Colors.white,
                          radius: 25.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Kashmal Murad',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Icon(
                    Icons.more_vert
                )
              ],
            ),
            Image(
              width: MediaQuery.of(context).size.width,
              height: 290,
              fit: BoxFit.cover,
              image: NetworkImage("https://images.unsplash.com/photo-1510552776732-03e61cf4b144?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.heart,
                        size: 37.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 37.0,
                    ),
                    SizedBox(width: 22.0),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 37.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.bookmark,
                    size: 34.0,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Liked by adil ali and 4,500 others',style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('View all 105 comments'
                ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('adil ali',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('very nice pic'
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('jazab murad',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('good ho gya'
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          borderRadius: new BorderRadius.all(new Radius.circular(37.0)),
                          border: new Border.all(
                            color: Colors.blue,
                            width: 4.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQk-rW6ev9-h9s3d-u0z-36qzTrdaaVpvzfdA&usqp=CAU"),
                          backgroundColor: Colors.white,
                          radius: 25.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Ruman ahmad',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Icon(
                    Icons.more_vert
                )
              ],
            ),
            Image(
              width: MediaQuery.of(context).size.width,
              height: 290,
              fit: BoxFit.cover,
              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/9/9a/Backstreet_Boys_2019_by_Glenn_Francis.jpg"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.heart,
                        size: 37.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 37.0,
                    ),
                    SizedBox(width: 22.0),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 37.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.bookmark,
                    size: 34.0,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Liked by adil ali and 4,500 others',style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('View all 105 comments'
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('adil ali',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('very nice pic'
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('jazab murad',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('pretty'
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          borderRadius: new BorderRadius.all(new Radius.circular(37.0)),
                          border: new Border.all(
                            color: Colors.blue,
                            width: 4.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1573016576115-86acce6323d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                          backgroundColor: Colors.white,
                          radius: 25.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Jazab ali',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Icon(
                    Icons.more_vert
                )
              ],
            ),
            Image(
              width: MediaQuery.of(context).size.width,
              height: 290,
              fit: BoxFit.cover,
              image: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-boys-1599827224.jpg"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.heart,
                        size: 37.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 37.0,
                    ),
                    SizedBox(width: 22.0),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 37.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.bookmark,
                    size: 34.0,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Liked by adil ali and 4,500 others',style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('View all 105 comments'
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('adil ali',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('very nice pic'
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('jazab murad',style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('nyc'
                  ),
                ),
              ],
            ),
          ],
            ),
      ),
    );
  }
  Widget Ui(String image){
    return new Container(
      child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        borderRadius: new BorderRadius.all(new Radius.circular(55.0)),
                        border: new Border.all(
                          color: Colors.blue,
                          width: 4.0,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(image),
                        backgroundColor: Colors.white,
                        radius: 42.0,
                      ),
                    ),
                  ),
           ],
          ),
      ),
    );
  }
}

