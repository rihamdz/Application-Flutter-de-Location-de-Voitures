import 'dart:io';

import 'package:cargo/data/app_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../models/Car_models.dart';
import 'myfield.dart';

class addCar extends StatefulWidget {
  const addCar({super.key});

  @override
  State<addCar> createState() => _addCarState();
}

final _nameController = TextEditingController();
final _etatController = TextEditingController();
final _vitesseController = TextEditingController();
final _doorController = TextEditingController();
final _iceController = TextEditingController();
final _priceController = TextEditingController();

class _addCarState extends State<addCar> {
  String imageUrl = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
              child: myfield(
                controller: _nameController,
                hintText: 'Car Name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
              child: myfield(
                controller: _etatController,
                hintText: 'Car Etat (manual / auto)',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
              child: myfield(
                controller: _doorController,
                hintText: 'number of doors',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
              child: myfield(
                controller: _vitesseController,
                hintText: 'acceleration',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
              child: myfield(
                controller: _iceController,
                hintText: 'air condition',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
              child: myfield(
                controller: _priceController,
                hintText: 'Price par hour',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(2, 2),
                              spreadRadius: 2,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: (imageUrl != null)
                            ? Image.network(imageUrl)
                            : Image.network('https://i.imgur.com/sUFH1Aq.png')),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text("Upload Image",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              onPressed: () {
                uploadImage();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xffF9864A),
                  ),
                  margin:
                      const EdgeInsets.only(left: 80, right: 90, bottom: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffF9864A)),
                    ),
                    onPressed: () {
                      final name = _nameController.text;
                      final door = _doorController.text;
                      final ice = _iceController.text;
                      final vitess = _vitesseController.text;
                      final etat = _etatController.text;
                      final price = _priceController.text;
                      createCare(
                        Name: name,
                        Door: door,
                        Ice: ice,
                        Etat: etat,
                        Vitess: vitess,
                        Price: price,
                      );
                    },
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text("Save")),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future createCare(
      {required String Name,
      required String Door,
      required String Ice,
      required String Etat,
      required String Vitess,
      required String Price}) async {
    final _auth = FirebaseAuth.instance;

    final json = {
      'name': Name,
      'etat': Etat,
      'door': Door,
      'ice': Ice,
      'vitess': Vitess,
      'price': Price,
    };

    // docCar.set(json);

    Future<void> addDataToSubCollection() async {
      final docCar = await FirebaseFirestore.instance;
      try {
        await docCar
            .collection('agence s useres')
            .doc(_auth.currentUser!.uid)
            .collection('Cars')
            .add(json);
        print('Data added to sub-collection successfully!');
      } catch (e) {
        print('Error adding data to sub-collection: $e');
      }
    }

    await addDataToSubCollection();

    car.add(CarModel(
        id: '',
        image: '',
        chair: 0,
        imagea: '"images/agence_profile/c1.png"',
        name: Name,
        price: 0,
        star: 0,
        img: '',
        reviews: '',
        Condition: Ice,
        acceliration: Vitess,
        doors: Door,
        etat: Etat,
        injection: '',
        seats: 0));
  }

// Get Firebase Storage reference
  FirebaseStorage getFirebaseStorage() {
    return FirebaseStorage.instance;
  }

// Get Firebase Storage bucket URL
  String getFirebaseStorageBucketURL() {
    return 'gs://cargo-f72eb.appspot.com';
  }

// Upload image to Firebase Storage
  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();

    PickedFile? image; // Declare the image variable here
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      // Select Image
      image = await _imagePicker.getImage(source: ImageSource.gallery);

      if (image != null) {
        var file = File(image.path);

        // Upload to Firebase
        var snapshot =
            await _firebaseStorage.ref().child('Agence/Cars').putFile(file);
        var downloadUrl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }
}
