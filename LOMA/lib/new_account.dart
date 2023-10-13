import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loma/home_screen.dart';
class new_account extends StatefulWidget {
  const new_account({super.key});

  @override
  State<new_account> createState() => _new_accountState();
}


class _new_accountState extends State<new_account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,0,0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0XFFE2DECE),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(CupertinoIcons.arrow_left,size: 30,)
                  ),
                ),
              ),
              const Center(
                child: Text("Create new",style: TextStyle(
                    fontFamily: 'Alieron',
                    fontSize: 40
                ),),
              ),
              const Center(
                child: Text("Account",style: TextStyle(
                    fontFamily: 'Alieron',
                    fontSize: 40
                ),),
              ),
              const Center(
                child: Text("Already Registered? Log in here.",
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 15,
                  ),),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50,10,0,0),
                child: Text("NAME",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: const Color(0XFFE2DECE),
                      filled: true,
                      border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50,10,0,0),
                child: Text("EMAIL",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: const Color(0XFFE2DECE),
                      filled: true,
                      border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50,10,0,0),
                child: Text("PASSWORD",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: const Color(0XFFE2DECE),
                      filled: true,
                      border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50,10,0,0),
                child: Text("CONFIRM PASSWORD",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: const Color(0XFFE2DECE),
                      filled: true,
                      border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50,10,0,0),
                child: Text("PIN CODE",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: const Color(0XFFE2DECE),
                      filled: true,
                      border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50,10,0,0),
                child: Text("AADHAR",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: const Color(0XFFE2DECE),
                      filled: true,
                      border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0XFFE2DECE),
                  borderRadius:
                  BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60)
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.fromLTRB(80,10,80,10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home_screen(),
                          ),
                        );
                      },
                      child: Text("Sign up",
                        style: TextStyle(fontFamily: 'Aileron',
                            fontSize: 20,
                            color: Colors.white
                        ),),
                    ),
                  ),
                ),

              )
            ],
          ), ),

      ),
    );
  }
}