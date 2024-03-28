import 'package:flutter/material.dart';
import 'package:instagram/Instagram/home.dart';
import 'package:instagram/Instagram/post.dart';
import 'package:instagram/Instagram/profile.dart';
import 'package:instagram/Instagram/reels.dart';
import 'package:instagram/Instagram/search.dart';

class maininsta extends StatefulWidget {
  const maininsta({super.key});

  @override
  State<maininsta> createState() => _maininstaState();
}

class _maininstaState extends State<maininsta> {
  int _currentIndex=0;
  final List<Widget>_pages=[
    Home(),
    search(),
    Post(),
    Reels(),
    profile()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap:  (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.movie_outlined),
              label: ''),
          BottomNavigationBarItem(
            icon: CircleAvatar(  backgroundImage: AssetImage("assets/images/img3.jpg"),),
            label: ''// Label for the item
          )
        ],
      ),
    );
  }
}



