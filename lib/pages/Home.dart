import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:nyinile_imports/components/Horizantal_listview.dart';
import 'package:nyinile_imports/components/Products.dart';
import 'package:nyinile_imports/pages/Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('images/nutribullet.jpg'),
          AssetImage('images/dessini.jpg'),
          AssetImage('images/halogen.jpg'),
          AssetImage('images/handbags.jpg'),
          AssetImage('images/mini_sewing machine.jpg'),
          AssetImage('images/mules.jpg'),
        ],
        autoplay: true,
        //animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        title: Text('Nyinile_Imports'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              })

        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //  header
            new UserAccountsDrawerHeader(
              accountName: Text('Charles Omwa'),
              accountEmail: Text ('omwacharles@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.pink
              ),
            ),

            // body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.account_circle,color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.pink,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorite'),
                leading: Icon(Icons.favorite, color: Colors.pink,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),

          ],
        ),
      ),

      body: new Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget

          Divider(color: Colors.pink),
          new Padding(padding: const EdgeInsets.all(0.0),
            child: new Text('Categories',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),),),

          //Flexible(child: Category()),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          Divider(),
          Divider(),
          Divider(color: Colors.pink),
          new Padding(padding: const EdgeInsets.all(0.0),
            child: new Text('Featured Products', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),),),

          //gridview

          Flexible(child: Products()),

        ],
      ),
    );
  }
}