import 'dart:async';

import 'package:first_app/Views/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                   Container(
                     height:150,
                     width: 100,
                     child: const Image(
                                   image: AssetImage('Assets/Images/bob1.png'),
                                 ),
                   ),
          ],
      ),
      ),
    );
  }
}
