import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class inviteFriend extends StatefulWidget {
  const inviteFriend({super.key});

  @override
  State<inviteFriend> createState() => _inviteFriendState();
}

class _inviteFriendState extends State<inviteFriend> {
  String _searchText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            color: Color(0xfff9864a),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 40, 0),
                  child: Row(
                    children: [
                      Image.asset("images/agence_park/Chevron.png"),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        'invite Friends',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins-ExtraBold',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 40, 0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            _searchText = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Amel Fettah',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Image.asset("images/agence_park/Follow (2).png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (1).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Ikram Rhahla',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 123,
                    ),
                    Image.asset("images/agence_park/Follow.png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (2).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Riham Bakir',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Image.asset("images/agence_park/Follow (2).png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (3).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Samah Bensalah',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    Image.asset("images/agence_park/Follow (2).png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (4).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Boukharouba Souad',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Image.asset("images/agence_park/Follow.png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (5).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Ammi Maissara',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 105,
                    ),
                    Image.asset("images/agence_park/Follow.png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (6).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Benariba',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Image.asset("images/agence_park/Follow.png"),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset("images/agence_park/Line.png"),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Image.asset("images/agence_park/Oval (7).png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Fettah Mohamed',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-ExtraBold',
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 98,
                    ),
                    Image.asset("images/agence_park/Follow.png"),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
