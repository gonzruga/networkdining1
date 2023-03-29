import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_localization/flutter_localization.dart";
import "package:get/get.dart"; // For translation

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
            Text(
              'intro'.tr,
              //AppLocalizations.of(context)!.helloWorld,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
              onPressed: () {
                var language = Locale('de', 'DE');
                Get.updateLocale(language);
              },
              child: Text("German"),
            ),
            ElevatedButton(
              onPressed: () {
                var language = Locale('en', 'UK');
                Get.updateLocale(language);
              },
              child: Text("English"),
            ),
            Image(image: AssetImage('assets/logo.jpg')),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                    controller: emailController,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      hintText: 'email'.tr,
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
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                    controller: passwordController,
                    style: TextStyle(fontSize: 25),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password".tr,
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: Text(
                "login".tr,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: Text(
                "signup".tr,
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