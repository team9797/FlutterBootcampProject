import 'package:boot1_project/barkod.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:boot1_project/cartmodel.dart';
import 'package:boot1_project/cartpage.dart';
import 'package:boot1_project/nextpagee.dart';
import 'package:boot1_project/home.dart';
import 'package:boot1_project/main.dart';

void main() => runApp(MyApp(
  model: CartModel(),

));


class MyApp extends StatelessWidget{

  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: NextPage(),

        routes: {'/cart': (context) => HomePage(),
          '/cart': (context) => CartPage(),
          '/cart': (context) => Barkod(),

        },
      ),
    );
  }
}