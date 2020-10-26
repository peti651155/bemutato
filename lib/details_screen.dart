// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu.dart';
import 'my_icons.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Másodképernyő'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Ez a másdoik képernyő'),
           // SvgPicture.asset(iconAir,),
            RaisedButton(
              child: Text('kattintson ide',style: TextStyle(fontSize: 16, color: Colors.white),),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MenuDashboardPage(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
