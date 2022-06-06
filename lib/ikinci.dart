import 'package:boot1_project/ucuncu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ikinciSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //child: Align(alignment:Alignment.center, child:

            Text(
              "Log in",
              textAlign: TextAlign.center,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ucuncuSayfa()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
