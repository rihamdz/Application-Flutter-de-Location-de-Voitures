import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../agence/agencePark.dart';

class searchView extends StatefulWidget {
  searchView({super.key});

  @override
  State<searchView> createState() => _searchViewState();
}

class _searchViewState extends State<searchView> {
  List<QueryDocumentSnapshot> documents = [];

  Future<void> fetchData(String val) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db.collection("agence s useres").where("name", isEqualTo: val).get().then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          print("..........////////////////////////////" +
              '${docSnapshot.id} => ${docSnapshot.data()}');
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
  }

  String name = "";
  @override
  void initState() {
    super.initState();
    fetchData(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffF9864A),
        toolbarHeight: 100,
        title: Padding(
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 30, bottom: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width - 40,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  onTap: () {
                    setState(() {
                      fetchData(name);
                    });
                  },
                  decoration: InputDecoration(
                      suffixIcon: SizedBox(
                          child: Image.asset("images/icons/filtre.png")),
                      hintText: "Search",
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        color: Color(0xffF9864A),
                      )),
                ),
              ),
            )),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection("agence s useres")
            .where("name", isEqualTo: name)
            .get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          List<DocumentSnapshot> documents = snapshot.data!.docs;

          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) {
              // Access the document data using documents[index]
              Map<String, dynamic> data =
                  documents[index].data() as Map<String, dynamic>;

              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return agencePark(
                      id: data['uid'],
                    );
                  }));
                },
                child: ListTile(
                  title: Text(data['name']),
                  subtitle: Text(data['email']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
