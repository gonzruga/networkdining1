import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginEnglish extends StatefulWidget {
  const LoginEnglish({Key? key}) : super(key: key);

  @override
  State<LoginEnglish> createState() => _LoginEnglishState();
}

class _LoginEnglishState extends State<LoginEnglish> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

// To clear input

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: TextField(
                    controller: emailController,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                      hintText: "Email",
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: TextField(
                    controller: passwordController,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                      hintText: "Password",
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: Text(
                "Login",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: Text(
                "SignUp",
              ),
            ),
          ],
        ),
      ),
    );
  }

  // End of Widget BUILD
} // End of Class _*State


/*




*/