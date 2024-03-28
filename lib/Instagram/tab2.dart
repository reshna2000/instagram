import 'package:flutter/material.dart';

class tab2 extends StatefulWidget {
  const tab2({super.key});

  @override
  State<tab2> createState() => _tab2State();
}

class _tab2State extends State<tab2> {
  final images=["assets/images/srch12.jpg","assets/images/gd.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1
      ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(

              ),
              child: InkWell(
                  onTap: () {},
                  child: Image.asset("${images[index]}", fit: BoxFit.cover,)
              ),
            );
          }
      ),
    );
  }
}
