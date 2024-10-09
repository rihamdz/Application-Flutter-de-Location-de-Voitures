import 'package:cargo/car/car.dart';

import 'package:cargo/home/contactScreen.dart';

import 'package:cargo/home/mainPage.dart';
import 'package:cargo/home/searchScreen.dart';
import 'package:cargo/profile_editing/profile_agency.dart';

import 'package:cargo/sign_in/Otp_form.dart';
import 'package:cargo/sign_in/Set_new%20_pwd.dart';
import 'package:cargo/sign_in/forgot_pwd.dart';
import 'package:cargo/sign_in/sign_in_screen.dart';
import 'package:cargo/sign_in/sign_up_screen.dart';
import 'package:cargo/sign_in/verification_screen.dart';
import 'package:cargo/splash_screen/splashViewScreen.dart';
import 'package:cargo/user_agence/Agence_Main_Page.dart';
import 'package:cargo/user_agence/routeScreen.dart';
import 'package:flutter/material.dart';

import 'agence/agencePark.dart';
import 'agence/inviteFriend.dart';
import 'agence/submit.dart';

import 'home/widgets.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
}
