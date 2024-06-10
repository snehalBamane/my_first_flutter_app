import 'dart:io';
import 'dart:ui';

import 'package:first_app/Views/BOB.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// void main(){
//   runApp(const Home());
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.yellow, Colors.white],
              center: Alignment.topLeft,
          radius: 2.5,
          stops: [0,2.5]
        )
      ),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar( 
          centerTitle: true,
          title: const Text(
            "Hi!! There",
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_sharp, color: Colors.red,),
              onPressed: () {
                // handle the press
              },
            )
          ],
          backgroundColor: Colors.yellowAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 80,
              child:
              DrawerHeader(
               child: Text(
                "Who do u want?",
                 style: TextStyle(fontSize: 25,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,
                     color: Colors.pink[900]),
              ),
              ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BOB()));
                },
                child: ListTile(
                  title: Text("BOB",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.pink[900]),
                  ),
                ),
              ),
              ListTile(
                title: Text("KEVIN",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink[900]),
                ),
              ),
              ListTile(
                title: Text("STUART",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink[900]),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  "Snehal is a brave girl",
                  style: TextStyle(fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic,
                                   color: Colors.purple),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BOB()));
                },
                  child: const SizedBox(
                    height: 200,
                    child: Image(
                      image:AssetImage('Assets/Images/minion-r.png'),
                    ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (Context) => BOB()));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top:5,
                    bottom: 5
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(9))
                  ),
                  child: Text(
                      "Click",
                    style: TextStyle(
                      color: Colors.white,

                    ),
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


























