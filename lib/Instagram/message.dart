import 'package:flutter/material.dart';
import 'package:instagram/Instagram/home.dart';
import 'package:instagram/Instagram/mainpage.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  final names=["Sanju","Abhi","Sreesh","Anu","Reshna","Gokul","Deepa","Megha","Sanju","Abhi","Sreesh","Anu","Reshna","Gokul","Deepa","Megha"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => maininsta(),));
          },
          icon: Icon(Icons.arrow_back_sharp, color: Colors.white, size: 20),
        ),
        title: Text(
          "Username_011",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {

              }, icon: Icon(Icons.video_call_rounded, color: Colors.white,)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.edit,color: Colors.white)),
            ],
          )
        ],
      ),
      backgroundColor:  Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)

                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Search",
                      labelStyle:  TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      prefixIcon: IconButton(onPressed: () {},icon: Icon(Icons.search,color: Colors.white),)
                  ),
                ),
              ),
            ),SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Messages",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Requests",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return SizedBox( height: 15,);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row (
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          children: [
                            CircleAvatar(
                              radius: 30,
                        backgroundImage: AssetImage("assets/images/icon2.png"),

                    ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text("${names[index]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Text("Seen",style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            SizedBox(width: 150,),
                            IconButton(onPressed: () {

                            }, icon: Icon(Icons.camera_alt_outlined,color: Colors.white)),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
