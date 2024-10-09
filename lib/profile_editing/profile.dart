import 'package:cargo/profile_editing/textfield.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../sign_in/My_textfield.dart';

class MyWidgets extends StatefulWidget {
  const MyWidgets({super.key});

  @override
  State<MyWidgets> createState() => _MyWidgetState();
}

final _userNameController = TextEditingController();
final _EmailController = TextEditingController();
final _pswController = TextEditingController();
final _confirmPswController = TextEditingController();
final _PhoneNumberController = TextEditingController();
Future Update(String name, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    await _auth.currentUser?.updatePassword(password);

    await _firestore.collection('Users').doc(_auth.currentUser!.uid).update({
      "name": name,
      "email": email,
      "status": "Unavalible",
      "uid": _auth.currentUser!.uid,
    });
  } catch (e) {
    print(e);
    return null;
  }
}

class _MyWidgetState extends State<MyWidgets> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    color: Color(0xffF9864A),
                    width: double.infinity,
                    height: size.height / 3.2,
                  ),
                  Positioned(
                    left: size.width / 15,
                    top: size.height / 15,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins-SemiBoldItalic.ttf',
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 142,
                    left: 120,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                            'images/circle_avatar/unsplash_jmURdhtm7Ng.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: 46,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Picture',
                      style: TextStyle(
                          color: Color(0xffF9864A),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: 'Poppins-Regular'),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins-MediumItalic.ttf',
                  ),
                ),
              ),
              MyTextField(
                controller: _userNameController,
                hintText: 'User Name',
                obscureText: false,
                image: 'images/login_signin/user.png',
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260, top: 15),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins-MediumItalic.ttf',
                  ),
                ),
              ),
              MyTextField(
                controller: _EmailController,
                hintText: 'Email',
                obscureText: false,
                image: 'images/login_signin/user.png',
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 15),
                child: Text(
                  'phone Number ',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins-MediumItalic.ttf',
                  ),
                ),
              ),
              MyTextField(
                controller: _PhoneNumberController,
                hintText: 'Phone Number',
                obscureText: false,
                image: 'images/login_signin/user.png',
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190, top: 15),
                child: Text(
                  'change Password',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins-MediumItalic.ttf',
                  ),
                ),
              ),
              MyTextField(
                controller: _pswController,
                hintText: '..........',
                obscureText: true,
                image: 'images/login_signin/user.png',
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190, top: 15),
                child: Text(
                  'confirm Password',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins-MediumItalic.ttf',
                  ),
                ),
              ),
              MyTextField(
                controller: _confirmPswController,
                hintText: '..........',
                obscureText: true,
                image: 'images/login_signin/user.png',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffF9864A),
                      minimumSize: Size(283, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Update(_userNameController.text, _EmailController.text,
                        _pswController.text);
                  },
                  child: Text(
                    'Update ',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
