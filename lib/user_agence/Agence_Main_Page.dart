import 'package:cargo/data/app_data.dart';
import 'package:cargo/models/Car_models.dart';
import 'package:cargo/user_agence/addCarInfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'CaeWidget.dart';

class agenceMainView extends StatefulWidget {
  const agenceMainView({super.key});

  @override
  State<agenceMainView> createState() => _agenceMainViewState();
}

class _agenceMainViewState extends State<agenceMainView> {
  final _controller = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder<QuerySnapshot>(
          future: FirebaseFirestore.instance
              .collection("agence s useres")
              .doc(_auth.currentUser!.uid)
              .collection("Cars")
              .get(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            List<DocumentSnapshot> documents = snapshot.data!.docs;
            print("///////////////////////////${documents.length}");
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text(
                    "OUR PROFILE",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  documents.length - 1 < 0
                      ? Center(
                          child: Text(
                            "the park is empty",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : ListView.builder(
                          itemCount: documents.length - 1,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            CarModel current = car[index];
                            Map<String, dynamic> data =
                                documents[index].data() as Map<String, dynamic>;
                            return CarWidget(
                                controller: _controller,
                                CarName: data['name'],
                                etat: data['etat'],
                                doors: data['door'],
                                vitesse: data['vitess'],
                                Condition: data['ice'],
                                CarImg: current.imagea);
                          },
                        ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 40.0, left: 40, bottom: 10),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffDDDDDD),
                              blurRadius: 4.0,
                              spreadRadius: 0.0,
                              offset: Offset(0.0, 0.0),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "add another car",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) {
                                      return addCar();
                                    }),
                                  );
                                },
                                child: Icon(Icons.add_circle_outline,
                                    color: Colors.grey))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

Future<void> getCars(String agenceName) async {
  var result = await FirebaseFirestore.instance
      .collection("Agence")
      .doc()
      .collection("Cars")
      .where('agenceName', isEqualTo: agenceName)
      .get();
}

Future<List<DocumentSnapshot>> fetchSubcollectionData() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('agence s useres')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('Cars')
      .get();

  return querySnapshot.docs;
}
