import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Loginpage();
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE2DECE),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                    color: Colors.white
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Login" , style: TextStyle(fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900,fontSize: 50,),),
              const SizedBox(
                height: 10,
              ),
              const Text("Sign in to continue.",style: TextStyle(fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900),),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text("Email",style: TextStyle(fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w700,fontSize: 15),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(65, 0, 65, 0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white),
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text("Password",style: TextStyle(fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w700,fontSize: 15),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(65, 0, 65, 0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.white),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                width: MediaQuery.of(context).size.width/1.5,
                height: 40,
                child: Center(child: Text("Log in",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: 'LeagueSpartan',fontSize: 30),)),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Forgot password ?",style: TextStyle(fontFamily: 'LeagueSpartan',fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5,
              ),
              Text("SignUp!",style: TextStyle(fontFamily: 'LeagueSpartan',fontSize: 15,fontWeight: FontWeight.bold),)

            ],
          ),
        ),
      ),
    );
  }
}
