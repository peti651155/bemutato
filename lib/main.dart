import 'package:flutter/material.dart';
import 'details_screen.dart';

import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      theme: ThemeData(
          primarySwatch: Colors.blue

      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Text('Kezdőképernyő'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Kattintson ide a második képernyőhöz',style: TextStyle(fontSize: 22,color: Colors.blue),),
            RaisedButton(
              child: Text('kattintson ide',style: TextStyle(fontSize: 16, color: Colors.white),),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ));
              },
            )

          ],
        ),


      ),
    );
  }
}

