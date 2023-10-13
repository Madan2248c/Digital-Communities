import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 50,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    height : 50,
                    width: 50,
                    image: NetworkImage('https://www.clipartkey.com/mpngs/m/208-2089363_user-profile-image-png.png'),),
                    SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My first" ,style: TextStyle(fontSize: 25),),
                    Text("App", textAlign: TextAlign.start,style: TextStyle(fontSize: 20 , color: Colors.orange),),
                  ],
                ),
              ],
            ),
            const Center(
                child: Text(
                  "Login",style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                ),)),
            const SizedBox(height: 8,),
            const Center(
              child: Text('Please Enter Your Email ID and password',textAlign: TextAlign.center,style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ), ),
            ),
            const SizedBox(height: 8,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: TextFormField(
                  decoration:  InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.grey[500],
                    filled: true,
                    prefixIcon: const Icon(Icons.email,color: Colors.black,),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    )

                  ),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: TextFormField(
                  decoration:  InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.grey[500],
                      filled: true,
                      prefixIcon: const Icon(Icons.password,color: Colors.black,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      )

                  ),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Forget Password ? " , textAlign: TextAlign.end ,style: TextStyle(

                decoration: TextDecoration.underline,
              ),),
            ),
            const SizedBox(height: 8,),
            Center(
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange,),
                child: const Center(child:  Text("Login")),
              ),
            ),
            const SizedBox(height: 8,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?"),
                SizedBox(width: 10,),
                Text("Sign Up" , style: TextStyle(color: Colors.orange),),
              ],
            )
          ],
        ) ,
      ),
    );
  }
}
