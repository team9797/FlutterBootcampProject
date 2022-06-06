import 'package:boot1_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:boot1_project/cartpage.dart';
import 'cartmodel.dart';
import 'ikinci.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //child: Align(alignment:Alignment.center, child:
            Text(
              "Welcome to efficient recycling!",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 120),
            Text("Would you like to help those in need while also supporting recycling?",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_right_alt_outlined,
                size: 60,
                color: Colors.black38,
              ),
              color: Colors.black,
              highlightColor: Colors.red,
              tooltip: 'Burası Talimat Yazısı',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ikinciSayfa()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}