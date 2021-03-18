import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_myinsta/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static final String id="splash_page";
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _inittimer(){
    Timer(Duration(seconds: 5),(){
      callsinginPage();
    });
  }
  callsinginPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _inittimer();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              //Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(252, 175, 69, 1),
              Color.fromRGBO(245, 96, 64, 1)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Text("Instagram",
                style: TextStyle(
                fontSize: 45,
                  color: Colors.white,
                  fontFamily: "Billabong",

              ),
              ),
            ),
            ),
            Text(
              "All rights reserved",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,

              ),
            ),
            SizedBox(height: 50,)

          ],
        ),
      ),
    );
  }
}
