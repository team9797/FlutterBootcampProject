
import 'package:boot1_project/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:boot1_project/cartmodel.dart';

class HomePage extends StatelessWidget {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Plastic bottle",
        price: 30.0,
        imgUrl: "https://img.icons8.com/officel/160/plastic.png",
        qty: 1),
    Product(
        id: 2,
        title: "Paper",
        price: 10.0,
        imgUrl: "https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/128/external-papers-kindergarten-icongeek26-linear-colour-icongeek26.png",
        qty: 1),
    Product(
        id: 3,
        title: "Battery",
        price: 20.0,
        imgUrl: "https://img.icons8.com/external-phatplus-lineal-color-phatplus/128/external-battery-ecology-system-phatplus-lineal-color-phatplus-2.png",
        qty: 1),
    Product(
        id: 4,
        title: "Canned",
        price: 35.0,
        imgUrl: "https://img.icons8.com/doodle/192/tin-can--v1.png",
        qty: 1),
    Product(
        id: 5,
        title: "Glass",
        price: 30.0,
        imgUrl: "https://img.icons8.com/plasticine/200/fragile.png",
        qty: 1),
    Product(
        id: 6,
        title: "Plastic packaging",
        price: 25.0,
        imgUrl: "https://img.icons8.com/external-fill-outline-pongsakorn-tan/128/external-plastic-ecology-and-pollution-fill-outline-pongsakorn-tan.png",
        qty: 1),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Products"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()),);
            },

          )
        ],
      ),
      body:
      GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
        itemBuilder: (context, index){
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
                return Card( child: Column( children: <Widget>[
                  Image.network(_products[index].imgUrl, height: 120, width: 120,),
                  Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(_products[index].price.toString()+" point"),
                  ElevatedButton(
                      child: Text("Add"),
                      onPressed: () => model.addProduct(_products[index]))
                ]));
              });
        },
      ),



    );
  }
}