import 'package:flutter/material.dart';
import 'package:main/ui_view/login.dart';
import 'package:main/ui_view/page2.dart';
import 'package:main/ui_view/page3.dart';

void main() {
  runApp(MyApp());
}

/*
 * class MyApp ini dibaratkan jika di android kotlin adalah
 * MainActivity atau Activity yang pertama kali di jalankan saat membuka app
 *   */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Pertama"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              "Welcome to My First Flutter",
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: MaterialButton(
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
              child: Text('page 1'),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
              color: Colors.blue,
              child: Text('page 2'),
            ),
          ),

          /*
           * Lanjutkan page latihan dan next lanjut ke bab selanjut nya
           * Untuk latihan buatlah 3 page : Login, SignUp dan Home,
           * 
           * Halaman Login : terdapat image/icon, TextFormField Email dan Password, 2 button (login dan signup)
           * - Jika user click login maka di arahkan ke halaman home dengan membawa/mengirim data email dan password
           * - Jika user click signup maka diarahkan ke halaman signup
           * 
           * Halaman Sign up: terdapat image/icon, TextFormField Email dan Passwod, 2 button (signup dan i have already account)
           * - Jika user click signup di arahkan ke halaman home dengan membawa/mengirim data email dan password
           * - Jika user click i have already account maka akan kembali ke login page
           * 
           * 
           * Halaman Home : Terdapat dua Text yaitu email dan password
           * - Email dan password diambil dari inputan halaman sebelumnya
           *   */

          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
              color: Colors.green,
              child: Text('page latihan'),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              color: Colors.amberAccent,
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        //digunakan untuk menambahkan ruang kosong pada layar
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.message,
                color: Colors.redAccent,
                size: 50.0,
              ),
              Text(
                'Message',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.redAccent,
                size: 50.0,
              ),
              Text(
                'Personal',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.calendar_today,
                color: Colors.redAccent,
                size: 50.0,
              ),
              Text(
                'Calendar',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}
