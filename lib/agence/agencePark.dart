import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../data/app_data.dart';
import '../models/Car_models.dart';
import '../user_agence/CaeWidget.dart';
import 'myContainer.dart';

class agencePark extends StatefulWidget {
  final String id;

  const agencePark({
    super.key,
    required this.id,
  });

  @override
  State<agencePark> createState() => _agenceParkState();
}

class _agenceParkState extends State<agencePark> {
  bool isSwitched = false;
  final _controller = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: FutureBuilder<QuerySnapshot>(
                future: FirebaseFirestore.instance
                    .collection("agence s useres")
                    .doc(widget.id)
                    .collection("Cars")
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  List<DocumentSnapshot> documents = snapshot.data!.docs;
                  return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Image.asset(
                                          'images/iconns/flesh.png')),
                                  SizedBox(
                                    width: size.width / 5.5,
                                  ),
                                  Center(
                                    child: Text(
                                      'Our Cars',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Mulish-SemiBold',
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width / 4,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "images/agences/agence2.png")),
                                ]),
                            SizedBox(
                              height: size.height / 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: size.width / 1.1,
                                //    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '''renting car agence offers you the best promotion every 
                        month. we are located in Algeries''',
                                  style: TextStyle(fontSize: 12),
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  border: Border.all(
                                      color: Color.fromARGB(95, 249, 247, 247)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0, // soften the shadow
                                      //extend the shadow
                                      offset: Offset(
                                        5.0, // Move to right 5  horizontally
                                        5.0, // Move to bottom 5 Vertically
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height / 30,
                            ),
                            Container(
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Best Offer',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins-ExtraBold',
                                    ),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Container(
                                          width: size.width / 1.9,
                                          child: Image.asset(
                                              "images/agence_park/iris 1.png")),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '''Enjoy our April
         Deals''',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      30, 15, 25, 20),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.orange,
                                                ),
                                                width: 69,
                                                height: 40,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          15, 14, 10, 15),
                                                  child: Text(
                                                    '30% off',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),

                                                //  decoration: BoxDecoration(borderRadius: BorderRadius.all(10)),
                                                //border: Border.all(color: Color.fromARGB(255, 240, 122, 48)),
                                              ),
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 5, 200, 0),
                              child: Text(
                                'Asvailable  Cars',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'Mulish-SemiBold',
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 5, 5),
                                  child: Text(
                                    'With driver',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.0,
                                        fontFamily: 'Mulish-Light'),
                                  ),
                                ),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  activeTrackColor: Color(0xff2cb67d),
                                  activeColor: Color(0xffffffff),
                                ),
                              ],
                            ),
                            ListView.builder(
                              itemCount: documents.length - 1,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                CarModel current = car[index];
                                Map<String, dynamic> data = documents[index]
                                    .data() as Map<String, dynamic>;
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15, right: 15, left: 15),
                                  child: MyWidget(
                                      Controller: _controller,
                                      CarName: data['name'],
                                      Etat: data['etat'],
                                      Doors: data['door'],
                                      Evaluate: current.reviews,
                                      price: current.price,
                                      chair: current.chair,
                                      Vitesse: data['vitess'],
                                      // Condition: current.Condition,
                                      CarImage: current.imagea),
                                );
                              },
                            ),
                          ]));
                })));
  }
}
