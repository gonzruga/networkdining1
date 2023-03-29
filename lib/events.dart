import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nas/create_event.dart';

class Events extends StatelessWidget {
  final Stream<QuerySnapshot> events =
      FirebaseFirestore.instance.collection('DiningEvents').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("eventsTitle".tr),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Icon(Icons.favorite),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
          backgroundColor: Colors.orange,
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'welcomeDine'.tr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 400,
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
                        return Column(
                          children: [
                            ListTile(
                              iconColor: Colors.green,
                              tileColor: Colors.red.withOpacity(0.2),
                              leading: Icon(Icons.food_bank),
                              title: Text(
                                  'Restaurant: ${data.docs[index]['Restaurant Name']}'),
                              subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Cuisine: ${data.docs[index]['Cuisine']}'),
                                    Text(
                                        'People attending: ${data.docs[index]['Attending']}'),
                                  ]),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        );
                      });
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateEvent()));
              },
              child: Text("eventCreateBtn".tr),
            )
          ],
        )));
  }
}

/*


*/