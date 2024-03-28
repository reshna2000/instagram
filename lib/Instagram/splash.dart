import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/Instagram/Loginpage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Loginpage(),));
    });
  }

Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(),
        child: Center(
          child: Image.asset("assets/images/insta.jpg",scale: 2),
        ),
      ),
      
    );
  }
}
