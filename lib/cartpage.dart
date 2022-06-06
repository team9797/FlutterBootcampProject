import 'package:boot1_project/nextpagee.dart';
import 'package:boot1_project/ucuncu.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:boot1_project/cartmodel.dart';
import 'package:boot1_project/home.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Treasure"),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  "Clear",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => ScopedModel.of<CartModel>(context).clearCart())
          ],
        ),
        body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
            .cart
            .length ==
            0
            ? Center(
          child: Text("No products to convert!"),
        )
            : Container(
            padding: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: ScopedModel.of<CartModel>(context,
                      rebuildOnChange: true)
                      .total,
                  itemBuilder: (context, index) {
                    return ScopedModelDescendant<CartModel>(
                      builder: (context, child, model) {
                        return ListTile(
                          title: Text(model.cart[index].title),
                          subtitle: Text(model.cart[index].qty.toString() +
                              " x " +
                              model.cart[index].price.toString() +
                              " = " +
                              (model.cart[index].qty *
                                  model.cart[index].price)
                                  .toString()),
                          trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    model.updateProduct(model.cart[index],
                                        model.cart[index].qty + 1);
                                    // model.removeProduct(model.cart[index]);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    model.updateProduct(model.cart[index],
                                        model.cart[index].qty - 1);
                                    // model.removeProduct(model.cart[index]);
                                  },
                                ),
                              ]),
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Total: " +
                        ScopedModel.of<CartModel>(context,
                            rebuildOnChange: true)
                            .totalCartValue
                            .toString() +
                        " point",
                    style: TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.yellow[900],
                    textColor: Colors.white,
                    elevation: 0,
                    child: Text("FINISH!"),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ucuncuSayfa()),);},
                  ))
            ])));
  }
}