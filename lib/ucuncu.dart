import 'package:boot1_project/barkod.dart';
import 'package:boot1_project/box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';
import 'ikinci.dart';
import 'models/habers.dart';

class ucuncuSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('Green Points')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite_outlined,),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_basket),

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sepet()),);

              },
            ),
            IconButton(
              icon: Icon(Icons.add_a_photo_rounded),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Barkod()),);

              },
            ),
            IconButton(
              icon: Icon(Icons.newspaper_sharp),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Haber()),);
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ikinciSayfa()),);
              },
            )
          ],
        ),
      ),
    );
  }
}
