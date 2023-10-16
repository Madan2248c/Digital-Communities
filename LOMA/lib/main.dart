import 'package:flutter/material.dart';
import 'package:loma/SplashScreen.dart';
import 'package:loma/new_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: splashScreen(),
      // home: Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage();

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _navigateToSignupScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const new_account(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2DECE),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: Colors.white,
              ),
              child: const Image(image: AssetImage("lib/assets/lomalogo.png"),),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Login",
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontWeight: FontWeight.w900,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Sign in to continue.",
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontWeight: FontWeight.w900,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 0, 65, 0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 0, 65, 0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Log in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'LeagueSpartan',
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Forgot password ?",
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: _navigateToSignupScreen,
              child: const Text(
                "SignUp!",
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
