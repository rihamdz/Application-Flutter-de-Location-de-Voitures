import 'package:cargo/sign_in/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../sign_in/sign_in_screen.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});

  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {
  @override
  Widget build(BuildContext context) {
    var color;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('images/splash/splach.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 150,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Premium ride',
                    style: TextStyle(
                      fontFamily: 'Be Vietnam Pro',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    'Affordable price',
                    style: TextStyle(
                      fontFamily: 'Be Vietnam Pro',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              )),
          Positioned(
            top: 550,
            left: 65,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return Auth();
                  }),
                );
              },
              child: Container(
                height: 47,
                width: 250,
                padding: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  color: Color(0xffF9864A),
                  borderRadius: BorderRadius.circular(13.06),
                ),
                child: Center(
                  child: Text(
                    "Let's GO!",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // child: Image.asset("images/splash/splash.png"),
    );
  }
}
