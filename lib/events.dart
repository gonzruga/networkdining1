import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nas/create_event.dart';

class Events extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'WELCOME TO JOIN ANY OF THE DINING EVENTS',
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
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
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateEvent()));
              },
              child: Text("Create Event"),
            )
          ],
        )));
  }
}

/*
Widget _buildListItem(BuildContext, DocumentSnapshot document) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(document['cuisine']),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: Text("Text 2 - Votes"),
          ),
        ],
      ),
    );
  }
*/