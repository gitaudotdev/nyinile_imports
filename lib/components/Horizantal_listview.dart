import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
           Category(
             image_location: 'images/new_orders.png',
             image_caption: 'Running Orders',
           ),
           Category(
             image_location: 'images/pending_orders.png',
             image_caption: 'Pending Orders',
           ),
           Category(
             image_location: 'images/arrived_orders.png',
             image_caption: 'Arrived Orders',
           ),
           Category(
             image_location: 'images/delivered.png',
             image_caption: 'Delivered'
           ),
          
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
  this.image_location,
  this.image_caption

  });


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
   child: InkWell(onTap: (){},
    child: Container(
      width: 86.0,
      child: ListTile(
        title: Image.asset(image_location,
        width: 90.0,
        height: 80.0,),

      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption),
      )
      ),
    ),
   ),);
  }
}

