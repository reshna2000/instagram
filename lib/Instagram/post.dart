import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final images=["assets/images/srch1.jpg","assets/images/story2.jpg","assets/images/stry3.jpg","assets/images/stry4.jpg",
    "assets/images/stry5.jpg","assets/images/srch9.jpg","assets/images/srach2.jpg","assets/images/srch3.jpg","assets/images/srch10.jpg","assets/images/srch4.jpg","assets/images/srch11.jpg","assets/images/srch5.jpg"
    ,"assets/images/srch6.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.clear, color: Colors.white),
        ),
        title: Text(
          "New Post",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Next",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/images/srch12.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Recents",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down_outlined, color: Colors.white),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.copy_sharp, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemCount: images.length, // Set itemCount to the actual number of items
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "${images[index]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
