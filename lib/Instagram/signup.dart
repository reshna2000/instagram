import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text("Choose username",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30)),
            Text("you can always change it later.",style: TextStyle(color: Colors.white,fontSize: 15)),
            SizedBox(
              height: 20,
            ),
            Container
              (
              height: 50,
              decoration:  BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(5),

              ),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                  });
                },
                cursorColor: Colors.grey,
                cursorWidth: 1,
                style: TextStyle( color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'username',

                  hintStyle:TextStyle(color: Colors.grey,fontSize: 15),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),

                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Color(0xFF4F6989); // Disabled color
                      }
                      return Colors.blue; // Enabled color
                    },
                  ),shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),),
                  minimumSize:MaterialStatePropertyAll(
                      Size(340, 50)
                  ),
                ),

                onPressed: () {

                },

                child: Text("Next",style: TextStyle( color: Colors.white,fontSize: 16),)),


          ],
        ),
      ),
    );
  }
}
