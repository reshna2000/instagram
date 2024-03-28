import 'package:flutter/material.dart';
import 'package:instagram/Instagram/forgot%20password.dart';
import 'package:instagram/Instagram/signup.dart';

import 'mainpage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String textfiled1='';
  String textfiled2='';
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  bool password=true;
  String? languages='ENGLISH(UK)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  child: DropdownButton(
                    value: languages,
                    onChanged: (String? newValue) {
                      setState(() {
                        languages = newValue;
                      });
                    },icon: Icon(Icons.arrow_drop_down_sharp),
                    underline: SizedBox(), // Set underline to null
                    items: <String>['ENGLISH(UK)','ON','OG','OFF','ENG',]
                        .map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                        style: TextStyle(
                          fontSize: 16, // Adjust font size as needed
                          color: Colors.grey, // Adjust color as needed
                        ),  )
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 98.0),
                child: Image.asset("assets/images/instagram.png",width: 180,),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                decoration:  BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(5),
          
                ),
                child: TextFormField(

                  onChanged: (value) {
                    setState(() {
                      textfiled1 = value;
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
                height: 15,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      textfiled2 = value;
                    });
                  },
                  style: TextStyle( color: Colors.white),
                  cursorColor: Colors.grey,
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    hintText: 'Password',
                      hintStyle:TextStyle(color: Colors.grey,fontSize: 10),
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                  ),focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                    suffixIcon: IconButton(
                    icon: Icon(
                    password?Icons.visibility_off:Icons.visibility,
                      color: Colors.grey,
          
                    ), onPressed: () {
                    setState(() {
                    password=!password;
                  });
                },
                ),
                  ),obscureText: password,
          
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
          
                  onPressed: (textfiled1.isNotEmpty && textfiled2.isNotEmpty)
                      ? () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> maininsta()));
          
                  }: null,
          
               child: Text("Log In",style: TextStyle( color: Colors.white,fontSize: 16),)),
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("Forgotten your login details?",style: TextStyle( color: Colors.white,fontSize: 10)),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> frgtpass()));

                  }, child: Text("Get help with logging in.",style: TextStyle( color: Color(0xFFD5E4F5),fontSize: 10,fontWeight: FontWeight.w700),))
                ],
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
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.facebook,color: Colors.blue), label: Text("Log In With Facebook",style: TextStyle(color: Colors.blueAccent),)),
          
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Divider(
                  thickness: 0.2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          
                  Text("Don't have an Account?",style: TextStyle(color: Colors.white)),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> signup()));

                  }, child: Text("SignUp",style: TextStyle(color: Colors.white)))
                ],
              ),
          
          
          
            ],
          ),
        ),
      ),
      

    );
  }
}
