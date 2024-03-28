import 'package:flutter/material.dart';
import 'package:instagram/Instagram/fav.dart';
import 'package:instagram/Instagram/message.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final stories=["assets/images/story1.jpg","assets/images/story2.jpg","assets/images/stry3.jpg","assets/images/stry4.jpg",
  "assets/images/stry5.jpg","assets/images/stry6.jpg"];
  final names=["My Story","Abhi","Sreesh","Anu","Reshna","Gokul","Deepa","Megha","Sanju","Abhi","Sreesh","Anu","Reshna","Gokul","Deepa","Megha"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage("assets/images/instagram.png"), height: 80,width: 140,),
                  SizedBox(width: 100,),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> fav()));

                  }, icon: Icon(Icons.favorite_border),color: Colors.white,),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> message()));

                  }, icon: Image.asset("assets/images/img.png", height: 90,width: 30,),color: Colors.white ,)
                ],
              ),
              Container(
                height: 100,
                child: ListView.separated(scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                    separatorBuilder: (context, index) {
                      return SizedBox( width: 15,);
                    },
                    itemBuilder: (context, index) {
                      return Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                           decoration: BoxDecoration (
                             shape: BoxShape.circle,
                              border: Border.all(color: Colors.red,width: 2),
                           ),
                          child: CircleAvatar(
                             backgroundImage: AssetImage(stories[index]),
                          ),
                        ),
                        Text("${names[index]}",style: TextStyle(color: Colors.white),)
                      ],
                      );
                    },
                ),
              ),
              Divider(
                thickness: 0.1,
              ),
              Container(
                // height: 400,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/icon2.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("GokulDas",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                          SizedBox(width: 175,),
                          Expanded(
                            child: IconButton(onPressed: () {
                              }, icon: Icon(Icons.more_vert,color: Colors.white,)),
                          )
                        ],
                      ),
                    ),
                     Image.asset("assets/images/img1.jpg"),
                    Row(
                         children: [
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.favorite_rounded,color: Colors.red,)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.mode_comment_outlined,color: Colors.white)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.send,color: Colors.white)),
                           SizedBox(
                             width: 150,
                           ),
                           Expanded(child: IconButton(onPressed: () {

                           }, icon: Icon(Icons.bookmark_border_rounded,color: Colors.white)))
                         ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("167 likes",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text(" 2 hours ago",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.1,
              ),
              Container(
                // height: 400,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/icon2.png"),

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Reshna",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                          SizedBox(width: 185,),
                          Expanded(
                            child: IconButton(onPressed: () {
                              }, icon: Icon(Icons.more_vert,color: Colors.white,)),
                          )
                        ],
                      ),
                    ),
                     Image.asset("assets/images/img2.jpg"),
                    Row(
                         children: [
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.mode_comment_outlined,color: Colors.white)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.send,color: Colors.white)),
                           SizedBox(
                             width: 150,
                           ),
                           Expanded(child: IconButton(onPressed: () {

                           }, icon: Icon(Icons.bookmark_border_rounded,color: Colors.white)))

                         ],
                    ),
                    Column(
                      children: [
                        Text("167 likes",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("  2 hours ago",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.1,
              ),
              Container(
                // height: 400,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/icon2.png"),

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Rahisha",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                          SizedBox(width: 185,),
                          Expanded(
                            child: IconButton(onPressed: () {
                              }, icon: Icon(Icons.more_vert,color: Colors.white,)),
                          )
                        ],
                      ),
                    ),
                     Image.asset("assets/images/img3.jpg",width: double.infinity),
                    Row(
                         children: [
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.favorite_rounded,color: Colors.red,)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.mode_comment_outlined,color: Colors.white)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.send,color: Colors.white)),
                           SizedBox(
                             width: 150,
                           ),
                           Expanded(child: IconButton(onPressed: () {

                           }, icon: Icon(Icons.bookmark_border_rounded,color: Colors.white)))

                         ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("200 likes",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text(" 20 hours ago",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.1,
              ),
              Container(
                // height: 400,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/icon2.png"),

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Abhishek",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                          SizedBox(width: 175,),
                          Expanded(
                            child: IconButton(onPressed: () {
                              }, icon: Icon(Icons.more_vert,color: Colors.white,)),
                          )
                        ],
                      ),
                    ),
                     Image.asset("assets/images/img5.jpg",width: double.infinity),
                    Row(
                         children: [
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.favorite_rounded,color: Colors.red,)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.mode_comment_outlined,color: Colors.white)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.send,color: Colors.white)),
                           SizedBox(
                             width: 150,
                           ),
                           Expanded(child: IconButton(onPressed: () {

                           }, icon: Icon(Icons.bookmark_border_rounded,color: Colors.white)))

                         ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("300 likes",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text(" 5 hours ago",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Container(
                // height: 400,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/icon2.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Sreeshma",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                          SizedBox(width: 175,),
                          Expanded(
                            child: IconButton(onPressed: () {
                              }, icon: Icon(Icons.more_vert,color: Colors.white,)),
                          )
                        ],
                      ),
                    ),
                     Image.asset("assets/images/img4.jpg",width: double.infinity,),
                    Row(
                         children: [
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.mode_comment_outlined,color: Colors.white)),
                           IconButton(onPressed: () {

                           }, icon: Icon(Icons.send,color: Colors.white)),
                           SizedBox(
                             width: 150,
                           ),
                           Expanded(child: IconButton(onPressed: () {

                           }, icon: Icon(Icons.bookmark_border_rounded,color: Colors.white)))

                         ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("100 likes",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text(" 8 hours ago",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
            ],
          ),
        ),
      )
    );
  }
}
