import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class submit extends StatefulWidget {
  const submit({super.key});

  @override
  State<submit> createState() => _submitState();
}

class _submitState extends State<submit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                child: Image.asset(
                                  "images/agence_park/Oval 2 (1).png",
                                  fit: BoxFit.cover,
                                ),
                                width: 890,
                                height: 228,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 3, 75, 0),
                            child: Container(
                              width: 300,
                              height: 300,
                              child: Image.asset(
                                  "images/agence_park/Oval 2 (2).png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 30, 20, 0),
                            child: Container(
                              width: 300,
                              height: 300,
                              child: Image.asset(
                                  "images/agence_park/Group 18636.png"),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Invite Friends',
                            style: TextStyle(
                              color: Color(0xff242e42),
                              fontSize: 27,
                            ),
                          ),
                          Text(
                            'Get 3 Coupons each!',
                            style: TextStyle(
                              color: Color(0xff242e42),
                              fontSize: 27,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '''When your friend sign up with your 
    referral code, you'll both get 3.0 
                       coupons''',
                        style: TextStyle(
                          color: Color(0xff242e42),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 140, 0),
                child: Text(
                  'Share Your Invite Code',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 10, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'A045KL',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    Image.asset("images/agence_park/share.1.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset("images/agence_park/Line (1).png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 27, 0, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(110, 7, 0, 0),
                      child: Text(
                        'Invite Friend',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
