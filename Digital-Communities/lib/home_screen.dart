import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFFE2DECE),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70)),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage("lib/assets/lomalogo.png"),
                        width: 200,
                        height: 100,
                      ),
                      SizedBox(height: 8),
                      Text("Hello Name",
                      style: TextStyle(
                        fontFamily: 'Alata',
                        fontSize: 25,
                        color: Colors.white
                      ),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30,top: 40,right: 30),
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              height:
              MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height / 3),
              decoration: const BoxDecoration(
                image: DecorationImage
                  (image: NetworkImage('https://cdn.hswstatic.com/gif/maps.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Categories",
                    style: TextStyle(
                      fontFamily: 'Alata',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: const Color(0XFFE1C16E),
                            borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0XFFE1C16E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0XFFE1C16E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0XFFE1C16E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0XFFE2DECE),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,color: Colors.black,),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_rounded,color: Colors.black,),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              label: 'Profile',
            ),
          ],

        ),
      ),
    );
  }
}
