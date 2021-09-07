import 'package:flutter/material.dart';
import 'package:main/ui_view/login.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Latihan'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.book,
                  color: Colors.green,
                  size: 90.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Welcome to My Library',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 20.0),
            ),
          ),
          SizedBox(
            height: 130.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'This is Solution for online learning',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 20.0),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'in here you can read the',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'All of The Books',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                  color: Colors.green),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => login()) );
              },
              color: Colors.green,
              child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
