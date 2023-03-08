import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

/*
class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  //DocumentSnapshot? document;

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

  @override
  Widget build(BuildContext context) {
    //final users = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Events Page"),
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('DiningEvents').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading ..');
            return ListView.builder(
              itemExtent: 80.0,
              //itemCount: snapshot.data.documents.length,
              itemBuilder: (context, Index) =>
                  _buildListItem(context, snapshot.data!.document[Index]),
            );
          }),
    );
  }
}
*/


/*

body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('DiningEvents').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading ..');
            return ListView.Builder(
              itemExtent: 80.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _buildListItem(context, snapshot.data.documents[index]),
            );
          }),

          
*/