import 'package:flutter/material.dart';
import 'package:instagram/Instagram/post.dart';
import 'package:instagram/Instagram/tab1.dart';
import 'package:instagram/Instagram/tab2.dart';
import 'package:instagram/Instagram/tab3.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
              child: Row(
                children: [
                  Icon(Icons.lock_outlined, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                  Spacer(),
                  Icon(Icons.account_circle, color: Colors.white, size: 30),
                  SizedBox(width: 15),
                  Icon(Icons.add_box_outlined, color: Colors.white, size: 30),
                  SizedBox(width: 15),
                  Icon(Icons.menu, color: Colors.white, size: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(radius: 40,
                    backgroundImage: AssetImage("assets/images/img3.jpg"),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0,top: 50),
                    child: IconButton(onPressed: () {

                    }, icon: Icon(Icons.add_circle,color:  Colors.blue,)),
                  )),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("38", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                      Text("posts", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("400", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                      Text("followers", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("400", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                      Text("following", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          minimumSize: Size(140, 30),
                          backgroundColor: Colors.white30,
                        ),
                        onPressed: () {},
                        child: Text("Edit profile", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          minimumSize: Size(140, 30),
                          backgroundColor: Colors.white30,
                        ),
                        onPressed: () {},
                        child: Text("Share profile", style: TextStyle(color: Colors.white)),
                      ),
                      IconButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.white30,
                            ),shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
                        ),minimumSize: MaterialStatePropertyAll(
                            Size(10, 10)
                        )
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.person_add, color: Colors.white, size: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.add),
                  radius: 30,
                ),
              ),
            ),

            SizedBox(height: 20),
            TabBar(
               indicatorColor:  Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.grid_on_rounded,color: Colors.white),
                ),
                Tab(icon: Icon(Icons.video_collection,color: Colors.white),
                ),
                Tab(icon: Icon(Icons.person_pin_outlined,color: Colors.white),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  tab1(),
                  tab2(),
                  tab3()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
