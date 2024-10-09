import 'dart:async';
import 'package:cargo/splash_screen/splashView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late String _now;
  late Timer _everySecond;
  late Timer _everySsecond;
  @override
  void initState() {
    super.initState();

    // sets first value
    color = Colors.white;

    // defines a timer
    _everySecond = Timer.periodic(Duration(seconds: 3), (Timer t) {
      setState(() {
        color = Color(0xffF9864A);
        _now = DateTime.now().second.toString();
      });
    });
// onther
    _everySsecond = Timer.periodic(Duration(seconds: 5), (Timer t) {
      setState(() {
        // Get.offAll(splashView());
      });
    });
  }

  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color,
        body: Center(
            child: InkWell(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            child: Image.asset("images/splash/lo.png"),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return splashView();
              }),
            );
          },
        )),
      ),
    );
  }
}
