import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class EventsThree extends StatelessWidget {
  final Stream<QuerySnapshot> events =
      FirebaseFirestore.instance.collection('DiningEvents').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EVENTS"),
        ),
        body: Center(
            //padding: const EdgeInsets.all(20.0),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WELCOME TO JOIN ANY OF THE DINING EVENTS',
            ),
            Container(
              height: 500,
              child: StreamBuilder<QuerySnapshot>(
                stream: events,
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
                  if (snapshot.hasError) {
                    return Text("Something went wrong");
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading");
                  }
                  final data = snapshot.requireData;
                  return ListView.builder(
                      itemCount: data.size,
                      itemBuilder: (context, index) {
                        return Text(
                            'Cuisine Type: ${data.docs[index]['Cuisine']}. Location: ${data.docs[index]['Restaurant Name']}. People attending: ${data.docs[index]['Attending']}');
                      });
                },
              ),
            ),
          ],
        )));
  }
}

/*
 child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Text('My text is here');
                },
*/