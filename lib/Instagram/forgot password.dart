import 'package:flutter/material.dart';

class frgtpass extends StatefulWidget {
  const frgtpass({super.key});

  @override
  State<frgtpass> createState() => _frgtpassState();
}

class _frgtpassState extends State<frgtpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Login help",style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              Text("Find Your Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
              Text("Enter your username or the\n email address or phone number\n linked to your account",style: TextStyle(color: Colors.white,fontSize: 15)),
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
                    hintText: 'Phone number,email address or username',

                    hintStyle:TextStyle(color: Colors.grey,fontSize: 10),
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

                  child: Text("Log In",style: TextStyle( color: Colors.white,fontSize: 16),)),

              SizedBox(
                height: 20,
              ),
              TextButton(onPressed: () {

              }, child: Text("Can't Reset your password?",style: TextStyle( color: Color(0xFFD5E4F5),fontSize: 10,fontWeight: FontWeight.w700),)),

              SizedBox(
                height: 20,
              ),
              Row(
                  children:[
                    Expanded(
                        child: Divider(thickness: 0.2,)
                    ),

                    Text(" OR ",style: TextStyle(color: Colors.white)),

                    Expanded(
                        child: Divider(thickness: 0.2,)
                    ),
                  ]
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey),
                    shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),),
                    minimumSize:MaterialStatePropertyAll(
                        Size(340, 50)
                    ),
                  ),

                  onPressed: () {

                  },

                  child:TextButton.icon(onPressed: () {

                  }, icon: Icon(Icons.facebook,color: Colors.white), label: Text("Log In With Facebook",style: TextStyle(color: Colors.white),)),
              ),



            ],
          ),
        ),
      ),

    );
  }
}
