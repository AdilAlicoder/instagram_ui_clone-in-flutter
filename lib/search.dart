import 'package:flutter/material.dart';
class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:EdgeInsets.only(left: 12.0,top: 30.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text(
                      'Search',
                      style:TextStyle(fontSize:20.0,color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: new Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    width: 80.0,
                    height: 25.0,
                    child: Center(
                      child: Text('IGTV',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: new Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    width: 80.0,
                    height: 25.0,
                    child: Center(
                      child: Text('Travel',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: new Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    width: 80.0,
                    height: 25.0,
                    child: Center(
                      child: Text('Shop',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: new Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    width: 80.0,
                    height: 25.0,
                    child: Center(
                      child: Text('Mobile',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: new Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    width: 80.0,
                    height: 25.0,
                    child: Center(
                      child: Text('Shopping',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                child: GridView.count(crossAxisCount: 3,
                children: [
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
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR3znkPRsHrRE396vleba9A-4eebz4H9wllwQ&usqp=CAU"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://pyxis.nymag.com/v1/imgs/3f6/2bd/c7c0b5c2b6f04fd8677cc854869b6435d4-the-boys-ep-6.rsquare.w700.jpg"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.ctfassets.net/iyiurthvosft/featured-img-of-post-212048/c2e4c5d617b0eb90a5e25908de4174c6/featured-img-of-post-212048.png?fm=jpg&fl=progressive&q=50&w=1200"),
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
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR3znkPRsHrRE396vleba9A-4eebz4H9wllwQ&usqp=CAU"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://pyxis.nymag.com/v1/imgs/3f6/2bd/c7c0b5c2b6f04fd8677cc854869b6435d4-the-boys-ep-6.rsquare.w700.jpg"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.ctfassets.net/iyiurthvosft/featured-img-of-post-212048/c2e4c5d617b0eb90a5e25908de4174c6/featured-img-of-post-212048.png?fm=jpg&fl=progressive&q=50&w=1200"),
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
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR3znkPRsHrRE396vleba9A-4eebz4H9wllwQ&usqp=CAU"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://pyxis.nymag.com/v1/imgs/3f6/2bd/c7c0b5c2b6f04fd8677cc854869b6435d4-the-boys-ep-6.rsquare.w700.jpg"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.ctfassets.net/iyiurthvosft/featured-img-of-post-212048/c2e4c5d617b0eb90a5e25908de4174c6/featured-img-of-post-212048.png?fm=jpg&fl=progressive&q=50&w=1200"),
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
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR3znkPRsHrRE396vleba9A-4eebz4H9wllwQ&usqp=CAU"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://pyxis.nymag.com/v1/imgs/3f6/2bd/c7c0b5c2b6f04fd8677cc854869b6435d4-the-boys-ep-6.rsquare.w700.jpg"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.ctfassets.net/iyiurthvosft/featured-img-of-post-212048/c2e4c5d617b0eb90a5e25908de4174c6/featured-img-of-post-212048.png?fm=jpg&fl=progressive&q=50&w=1200"),
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
                ],),
              ),
            ),
        ],
      ),
    );
  }
}
