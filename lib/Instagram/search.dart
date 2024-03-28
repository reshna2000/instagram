import 'package:flutter/material.dart';

class search extends StatelessWidget {
 search({super.key});
  final images=["assets/images/srch1.jpg","assets/images/srch9.jpg","assets/images/srach2.jpg","assets/images/srch3.jpg","assets/images/srch10.jpg","assets/images/srch4.jpg","assets/images/srch11.jpg","assets/images/srch5.jpg"
  ,"assets/images/srch6.jpg","assets/images/srch12.jpg","assets/images/srch7.jpg","assets/images/srch8.jpg","assets/images/stry5.jpg","assets/images/srch5.jpg","assets/images/stry2.jpg","assets/images/stry4.jpg","assets/images/srch10.jpg","assets/images/srch3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 50,
                decoration:  BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  cursorWidth: 1,
                  style: TextStyle( color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle:TextStyle(color: Colors.white,fontSize: 20),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                      prefixIcon: IconButton(onPressed: () {},icon: Icon(Icons.search,color: Colors.white),)

                  ),
                ),
              ),),
            SizedBox(
              height: 1,

            ),

      Expanded(
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    )


          ],

              ),
            ),





    );
  }
}
