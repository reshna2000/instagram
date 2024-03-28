import 'package:flutter/material.dart';

class tab1 extends StatefulWidget {
  const tab1({super.key});

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  final images=["assets/images/srch1.jpg","assets/images/story2.jpg","assets/images/stry3.jpg","assets/images/stry4.jpg",
  "assets/images/stry5.jpg","assets/images/srch9.jpg","assets/images/srach2.jpg","assets/images/srch3.jpg","assets/images/srch10.jpg","assets/images/srch4.jpg","assets/images/srch11.jpg","assets/images/srch5.jpg"
  ,"assets/images/srch6.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
