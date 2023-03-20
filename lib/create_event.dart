import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatelessWidget {
  //const CreateEvent({super.key});
  final _formKey = GlobalKey<FormState>();

  var date =
      ''; //Timestamp: May 1,2023 at 7:00:00 PM UTC+3 | "2023-06-23 13:00:00.000"
  var restaurantName = '';
  var cuisine = '';
  var description = '';
  var address = '';
  var websiteMenu = '';
  var attending = 0;

  @override
  Widget build(BuildContext context) {
    CollectionReference events =
        FirebaseFirestore.instance.collection("DiningEvents");

    return Scaffold(
      appBar: AppBar(
        title: Text("CREATE EVENT"),
      ),
      body: Form(
          child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter date in format: ",
              labelText: 'Date',
            ),
            onChanged: (value) => {date = value}, // TODO Validator
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter restaurant name ",
              labelText: 'Restaurant Name',
            ),
            onChanged: (value) => {restaurantName = value},
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Cuisine e.g. Sushi, Italian",
              labelText: 'Cuisine',
            ),
            onChanged: (value) => {cuisine = value}, // TODO Validator
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Description",
              labelText: 'Description',
            ),
            onChanged: (value) => {description = value}, // TODO Validator
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Address",
              labelText: 'Address',
            ),
            onChanged: (value) => {address = value}, // TODO Validator
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "http//...",
              labelText: 'Website Menu',
            ),
            onChanged: (value) => {websiteMenu = value}, // TODO Validator
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Attendence number ",
              labelText: 'Attending',
            ),
            onChanged: (value) =>
                {attending = int.parse(value)}, // TODO Validator
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              events
                  .add({
                    'Date': date,
                    'Restaurant Name': restaurantName,
                    'Cuisine': cuisine,
                    'Description': description,
                    'Address': address,
                    'Website Menu': websiteMenu,
                    'Attending': attending
                  })
                  .then((value) => print('Event added'))
                  .catchError((error) => print("Failed to add event: $error"));
            },
            child: Text("Create Event"),
          ),
        ],
      )),
    );
  }
}

/*
#VALIDATORS
validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter __';
  }
  return null;
}

*/