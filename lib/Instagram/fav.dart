import 'package:flutter/material.dart';
import 'package:instagram/Instagram/home.dart';

class fav extends StatefulWidget {
  const fav({super. key});
  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  final names=["Sanju","Abhi","Sreesh","Anu","Reshna","Gokul","Deepa","Megha","Sanju","Abhi","Sreesh","Anu","Reshna","Gokul","Deepa","Megha"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> Home()));

          },
          icon: Icon(Icons.arrow_back_sharp, color: Colors.white, size: 25),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  top: 4,
                  left: 2,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/img4.jpg"),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: 13,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/img1.jpg"),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 70,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Follow Requests',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Username + 500 others',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Icon(Icons.arrow_right_outlined, color: Colors.white)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage("assets/images/icon.jpg")),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text("${names[index]} Liked your Story", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 70),
                  Card(
                    child: Image.asset("assets/images/img1.jpg", scale: 50),
                    color: Colors.yellow,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
