import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "IndieFlower"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adding Asset"),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bd.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Image.asset("assets/icons/icon.png"),
              Positioned(
                top: 16,
                left: 115,
                child: Text(
                  "My custom font",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    // fontFamily: "IndieFlower",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
