import 'package:flutter/material.dart';
import 'package:nyinile_imports/pages/Product_Details.dart';
class Products extends StatefulWidget {
  @override
   _ProductsState createState()=> _ProductsState();
  }
  class _ProductsState extends State<Products> {
  var product_list =[
    {
      "name": "Dessert_Bullet",
      "picture":"images/dessert_bullet.jpg",
      "old_price":4500,
      "price":3600,
    },

    {
    "name": "Diffuser",
    "picture":"images/diffuser.jpg",
    "old_price":2500,
    "price":1600,
    },

    {
      "name": "Straightener",
      "picture":"images/hair_straightener.jpg",
      "old_price":1200,
      "price":1000,
    },

    {
    "name": "Portable blender",
    "picture":"images/portable blender.jpg",
    "old_price":1550,
    "price":900,
    },

    {
    "name": "curtain holder",
    "picture":"images/curtain holder.jpg",
    "old_price":250,
    "price":200,
    },

    {
      "name": "Peanut_Machine",
      "picture":"images/peanut_machine.jpg",
      "old_price":3500,
      "price":2400,
    },

    {
      "name": "Halogen_Oven",
      "picture":"images/halogen.jpg",
      "old_price":6500,
      "price":5500,
    }

  ];
    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: product_list.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_price: product_list[index]['price'],
              prod_old_price: product_list[index]['old_price'],

              ),
            );
    });
    }
    }
    class
  Single_prod extends StatelessWidget
    {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

   Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
    @override
    Widget build(BuildContext context) {
      return Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                // here we are passing the values of the products to the product details page
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
              footer: Container(
              color: Colors.white30,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  ),
                  new Text("\KES ${prod_price}",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),)
                ],)

              ),
      child: Image.asset(prod_picture,
      fit: BoxFit.contain)),
      ),
          ) ),
          );


    }
  }



