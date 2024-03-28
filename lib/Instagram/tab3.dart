import 'package:flutter/material.dart';

class tab3 extends StatefulWidget {
  const tab3({super.key});

  @override
  State<tab3> createState() => _tab3State();
}

class _tab3State extends State<tab3> {
  final images=["assets/images/story2.jpg","assets/images/stry3.jpg",
    "assets/images/stry5.jpg","assets/images/srch9.jpg","assets/images/srach2.jpg","assets/images/srch3.jpg","assets/images/srch10.jpg","assets/images/srch4.jpg","assets/images/srch11.jpg","assets/images/srch5.jpg"
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
