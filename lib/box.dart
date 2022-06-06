import 'package:boot1_project/cartmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'cartmodel.dart';

class sepet extends StatelessWidget {
  //get late => CartModel();

  @override
  Widget build(BuildContext context) {
    int tot;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //child: Align(alignment:Alignment.center, child:

            Text(
              "Total: " +
                  ScopedModel.of<CartModel>(context, rebuildOnChange: true)
                      .totalCartValue
                      .toString() +
                  " point",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 120),
            Column(children: [
              if (ScopedModel.of<CartModel>(context, rebuildOnChange: true)
                      .totalCartValue <
                  300) ...[
                Text(
                  "Thanks to the points you have collected, Food was donated to stray animals!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 120),
                Image.asset(
                  "icons8-dog-food-65.png",
                  width: 100,
                  height: 200,
                ),
              ] else if (ScopedModel.of<CartModel>(context,
                          rebuildOnChange: true)
                      .totalCartValue >
                  300) ...[
                Text(
                  "1 Sapling was planted in your name!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 120),
                Image.asset(
                  "icons8-tree-planting-96.png",
                  width: 100,
                  height: 200,
                ),
              ] else ...[
                Text(
                  "You need to collect more points for donation :(",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ]
            ])
          ],
        ),
      ),
    );
  }
}
