import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BOB extends StatefulWidget {
  const BOB({super.key});

  @override
  State<BOB> createState() => _BOBState();
}

class _BOBState extends State<BOB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 80,
              left: 20,
              right: 20
            ),
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
                    child: Image(
                      image: NetworkImage(
                        "https://picsum.photos/160/130",
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Hello"
                  ),
                ),
              ],
            ),
          ),

          // InkWell(
          //   onTap: (){
          //     Navigator.pop(context);
          //   },
          //   child: Container(
          //     margin: EdgeInsets.all(20),
          //     padding: EdgeInsets.only(
          //       left: 20,
          //       right: 20,
          //       top: 5,
          //       bottom: 5,
          //     ),
          //     decoration: BoxDecoration(
          //         color: Colors.blueAccent,
          //         borderRadius: BorderRadius.all(Radius.circular(9))
          //     ),
          //     child: Text("Back",
          //       style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold,
          //       ),),
          //   ),
          // ),
        ],
      ),
    );
  }
}
