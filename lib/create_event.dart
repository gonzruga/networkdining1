import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateEvent extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  var date =
      ''; //Timestamp: May 1,2023 at 7:00:00 PM UTC+3 | "2023-06-23 13:00:00.000"
  var restaurantName = '';
  var cuisine = '';
  var description = '';
  var address = '';
  var websiteMenu = '';
  var attending = 0;
  var imageUrl = '';

  @override
  Widget build(BuildContext context) {
    CollectionReference events =
        FirebaseFirestore.instance.collection("DiningEvents");

    return Scaffold(
      appBar: AppBar(
        title: Text("eventCreateTitle".tr),
        backgroundColor: Colors.orange,
      ),
      body: Form(
          child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              //hintText: "2023-06-23 13:00:00.000",
              labelText: 'date'.tr,
            ),
            onChanged: (value) => {date = value}, // TODO Validator
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "restaurant".tr,
            ),
            onChanged: (value) => {restaurantName = value},
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "cuisineExamples".tr,
              labelText: 'cuisine'.tr,
            ),
            onChanged: (value) => {cuisine = value}, // TODO Validator
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'description'.tr,
            ),
            onChanged: (value) => {description = value}, // TODO Validator
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'address'.tr,
            ),
            onChanged: (value) => {address = value}, // TODO Validator
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "http//...",
              labelText: 'websiteMenu'.tr,
            ),
            onChanged: (value) => {websiteMenu = value}, // TODO Validator
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'attending'.tr,
            ),
            onChanged: (value) =>
                {attending = int.parse(value)}, // TODO Validator
          ),
          IconButton(
            onPressed: () async {
              ImagePicker imagePicker = ImagePicker();
              XFile? file = await imagePicker.pickImage(
                  source: ImageSource.gallery); // or .camera
            },
            icon: Icon(Icons.camera_alt_rounded),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            onPressed: () {
              events
                  .add({
                    'Date': date,
                    'Restaurant Name': restaurantName,
                    'Cuisine': cuisine,
                    'Description': description,
                    'Address': address,
                    'Website Menu': websiteMenu,
                    'Attending': attending,
                    'Image': imageUrl,
                  })
                  .then((value) => print('Event added'))
                  .catchError((error) => print("Failed to add event: $error"));
            },
            child: Text("eventCreateBtn".tr),
          ),
        ],
      )),
    );
  }
}

/*
# VALIDATORS
validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter __';
  }
  return null;
}

# IMAGE UPLOAD

// Before picking create file reference for storage

              // ImagePicker imagePicker = ImagePicker();
              // XFile? file = await imagePicker.pickImage(
              //     source: ImageSource.gallery); // or .camera
              // print('${file?.path}');

              // // 6.If null we will not perform operation.
              // if (file == null) return;

              // // 4.Create unique string name
              // String uniqueImageFileName =
              //     DateTime.now().millisecondsSinceEpoch.toString();

              // // 2.Get a reference to storage root
              // Reference referenceRoot = FirebaseStorage.instance.ref();
              // Reference referenceDirImages = referenceRoot.child('images');

              // //  3.Create a reference for the image to be stored
              // Reference referenceImageToUpload =
              //     referenceDirImages.child(uniqueImageFileName);
              // //child(path) 'Path' we shall create unique name based on time stmap. 'Path' could be same name of file

              // // 5.Store/upload the file to the specific reference
              // // 7. Handle errors

              // await referenceImageToUpload.putFile(File(file!.path)); //5

              // try {
              //   await referenceImageToUpload.putFile(File(file!.path)); //5
              //   // 8.If Success - get download URL
              //   imageUrl = await referenceImageToUpload
              //       .getDownloadURL(); // 10. Add 'await' coz sychronious, wait completion of above
              // } catch (error) {
              //   "Something wrong";
              // }



  Future<String?> uploadFile(File file) async {
  try {
    final fileName = file.path.split('/').last;
    final firebase_storage.Reference ref =
        firebase_storage.FirebaseStorage.instance.ref().child(fileName);
    final firebase_storage.UploadTask uploadTask = ref.putFile(file);
    final url = await (await uploadTask).ref.getDownloadURL();
    return url;
  } catch (e) {
    print(e);
    return null;
  }
}

*/