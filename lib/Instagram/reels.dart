import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Container with red color
          Positioned.fill(
            child: Container(

              width: double.infinity,
              child: Image.asset(
                "assets/images/reel1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Second container
          Positioned(
            left: 300, // Adjust the left position
            top: 450, // Adjust the top position
            child: Container(
              color: Colors.transparent,
              height: 220, // Adjust the height
              width: 50,
              child:Column(
                children: [
                  Icon(Icons.favorite,color: Colors.red,size: 35),
                  SizedBox(
                     height: 20,
                  ),
                  Icon(Icons.comment,color: Colors.white,size: 35),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.send,color: Colors.white,size: 35),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.more_vert,color: Colors.white,size: 35),
                ],
              ),// Adjust the width
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      "Reels",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.white),
                    SizedBox(
                      width: 210,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 530.0, right: 100.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/img3.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Reshna",style:  TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(
                       width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(BorderSide(color: Colors.white)), // Border color
                        foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
                      ),
                      child: Text("Follow",style:  TextStyle(color: Colors.white)),
                    )

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
