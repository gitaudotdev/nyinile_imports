import 'package:flutter/material.dart';
import 'package:nyinile_imports/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: InkWell(
          onTap:(){}, //Navigator.push(context,MaterialPageRoute(builder: (context)=> new HomePage()));
            child: Text('Nyinile_Imports')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),


        ],
      ),

      body: new ListView(
          children: <Widget>[
            new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("\KES ${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                        ),

                        Expanded(
                          child: new Text("\KES ${widget.product_detail_new_price}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
                        ),
                        ),],
                    ),
                  ),
                ),
              ),
            ),

      // =============first button============



      Row(
        children: <Widget>[
          //=========the size button========

          Expanded(
            child: MaterialButton(
              onPressed: (){
                showDialog(context: context,
                builder: (context) {
                  return new AlertDialog(
                    title: new Text("Size"),
                    content: new Text("Choose the size"),
                    actions: <Widget>[
                      new MaterialButton(onPressed:(){
                        Navigator.of(context).pop(context);
                      },
                      child: new Text("close"),)
                    ],
                  );
                });
              },
              color: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("Size"),
                  ),

                  Expanded(
                      child: new Icon(Icons.arrow_drop_down)
                  ),
                ],
              ),),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                showDialog(context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: new Text("Color"),
                        content: new Text("Choose the color"),
                        actions: <Widget>[
                          new MaterialButton(onPressed:(){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),)
                        ],
                      );
                    });
              },
              color: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("Color"),
                  ),

                  Expanded(
                      child: new Icon(Icons.arrow_drop_down)
                  ),
                ],
              ),),
          ),
          //=========the size button========

          Expanded(
            child: MaterialButton(
              onPressed: (){
                showDialog(context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: new Text("Qnty"),
                        content: new Text("Choose the quantity"),
                        actions: <Widget>[
                          new MaterialButton(onPressed:(){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),)
                        ],
                      );
                    });
              },
              color: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("Qnty"),
                  ),

                  Expanded(
                      child: new Icon(Icons.arrow_drop_down)
                  ),
                ],
              ),),
          ),
        ],
    ),

            // ======= the second Button===
            Row(
              children: <Widget>[
                //============The size button=======
                Expanded(
                  child: MaterialButton(onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now")
                  ),
                ),

                new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,),onPressed: (){},),

                new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red ,onPressed: (){},),
              ],
            ),
      Divider(color: Colors.pink,),
            new ListTile(
              title: new Text("Product details"),
              subtitle: new Text( "The best available quality you will ever get across the world. It comes as a complete package and the instructionson the use are found on the manual packed inside it"),
            ),
            Divider(color: Colors.pink,),
         new Row(
           children: <Widget>[
             Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
               child: new Text("Product name", style: TextStyle(color: Colors.black),
               ),
             ),
             //Remember to create the product brand
             Padding(padding:EdgeInsets.all(5.0),
             child: new Text(widget.product_detail_name),)
           ],
         ),
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product brand", style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(padding:EdgeInsets.all(5.0),
                  child: new Text("Band X"),),
              ],
            ),


           // ADD PRODUCT CONDITION
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product condition", style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(padding:EdgeInsets.all(5.0),
                  child: new Text("New"),),
              ],
            ),

            Divider(color: Colors.pink),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar_products",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
          ),
            //SIMILAR PRODUCTS SELECTION.
            Container(
              height: 360.0,
              child: Similar_products(),
            )
          ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {


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
      "name": "curtain holder",
      "picture":"images/curtain holder.jpg",
      "old_price":250,
      "price":200,
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
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
            prod_old_price: product_list[index]['old_price'],

          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget
{
final prod_name;
final prod_picture;
final prod_old_price;
final prod_price;

Similar_Single_prod({
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
















