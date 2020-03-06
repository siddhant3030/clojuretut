import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:first_app/components/horizontal_listview.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/IMG_1266.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.amber,
        title: Text('NoFilter'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){},)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Siddhant Singh'),
                accountEmail: Text('ssiddhant3030@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),),
                  decoration: new BoxDecoration(
                    color: Colors.amber
                  ),),
             // Body
             InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('Home Page'),
                 leading: Icon(Icons.home)
               ),
             ),

                InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('My Account'),
                 leading: Icon(Icons.person)
               ),
             ),


   InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('My order'),
                 leading: Icon(Icons.shopping_basket)
               ),
             ),


   InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('Categories'),
                 leading: Icon(Icons.dashboard)
               ),
             ),


   InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('Favourites'),
                 leading: Icon(Icons.favorite)
               ),
             ),

          Divider(),

             InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('Settings'),
                 leading: Icon(Icons.settings, color: Colors.blue)
               ),
             ),

                InkWell(
                 onTap: (){},
                 child: ListTile(
                 title: Text('About'),
                 leading: Icon(Icons.help, color: Colors.blue)
               ),
             )



          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          // padding widget
          new Padding(padding: const EdgeInsets.all(10.0), 
          child: new Text('Categories'),),

          // Horizontal list view
          HorizontalList(),
        ],
      )
    );
  }
}