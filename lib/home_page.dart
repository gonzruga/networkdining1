import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = FirebaseAuth.instance.currentUser;

    return Scaffold(
        appBar: AppBar(
          title: Text("Landing Page Test"),
        ),
        body: SafeArea(
          child: Column(children: [
            Text(
              'Welcome to Network Dinning app ${users?.email}',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 47, 102, 160)),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text(
                "Logout",
              ),
            ),
          ]),
        ));
  }
}
