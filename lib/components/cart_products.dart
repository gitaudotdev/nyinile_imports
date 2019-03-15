import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
var Products_on_the_cart = [
{
  "name": "Dessert_Bullet",
  "picture":"images/dessert_bullet.jpg",
  "price":3600,
  'Size':'M',
  "color":"Red",
  "quantity": 1,
},
{
  "name": "Halogen_Oven",
  "picture":"images/halogen.jpg",
  "price":5500,
  "Size":"medium",
  "color":"Black",
  "quantity": 1,
},

];
  
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context,  index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_qnty: Products_on_the_cart[index]["quantity"],
        );

        });
    
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qnty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qnty
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //=================LEADING SECTION============
        leading: new Image.asset(cart_prod_picture,width: 80.0,
        height: 80.0,),

        //============TITLE SECTION==========
        title: new Text(cart_prod_name),

        //==============SUBTITLE SECTION===========
        subtitle: new Column(
          children: <Widget>[
            // ROW INSIDE THE COLUMN
            new Row(
              children: <Widget>[
              Expanded(
                child: new Text("Size:"),
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 5.0, 12.0, 5.0),
                 // child: new Text(cart_prod_size),
                ),

                // THIS SECTION IS THE COLOR OF THE PRODUCT
                Expanded(
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color , style: TextStyle(color: Colors.red),),
                ),


          ],
            ),
            //=========TIS SECTION IS FOR PRODUCT PRICE========

            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\KES ${cart_prod_price}",
                style: TextStyle(
                fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
              ),),
            )
          ],
          ),
          trailing: new Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              new Text("$cart_prod_qnty"),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),
      ),
    );
  }

}

