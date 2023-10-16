import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loma/main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(const Duration(seconds: 3), () { });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Loginpage()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFE2DECE),
      body: Center(child: Image(image: AssetImage('lib/assets/lomalogo.png'))),
    );
  }
}
