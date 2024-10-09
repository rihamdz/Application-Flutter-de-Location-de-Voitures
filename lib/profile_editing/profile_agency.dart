import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sign_in/My_textfield.dart';

class agy extends StatefulWidget {
  const agy({super.key});

  @override
  State<agy> createState() => _agyState();
}

class _agyState extends State<agy> {
  final _userNameController = TextEditingController();
  final _EmailController = TextEditingController();
  final _pswController = TextEditingController();
  final _confirmPswController = TextEditingController();
  final _PhoneNumberController = TextEditingController();
  final _bioController = TextEditingController();
  Future updateAgence(
      String name, String email, String password, String phone_number) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    await _auth.currentUser?.updatePassword(password);
    await _firestore
        .collection('agence s useres')
        .doc(_auth.currentUser!.uid)
        .update({
      "name": name,
      "email": email,
      "phone number": phone_number,
      "status": "Unavalible",
    });
    print('success');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SizedBox(
              height: size.height / 30,
            ),
            Container(
                height: size.height / 5,
                width: size.width / 1.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    cursorHeight: size.height / 3,
                    controller: _bioController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Bio',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffF9864A),
                    minimumSize: Size(283, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  updateAgence(_userNameController.text, _EmailController.text,
                      _PhoneNumberController.text, _pswController.text);
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
    );
  }
}
