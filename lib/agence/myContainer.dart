import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  final Controller;
  final String CarName;
  final String Evaluate;
  final String Etat;
  final String Vitesse;
  final String CarImage;
  final String Doors;
  final double chair;
  final double price;

  const MyWidget(
      {super.key,
      required this.Controller,
      required this.CarName,
      required this.Evaluate,
      required this.Etat,
      required this.Vitesse,
      required this.CarImage,
      required this.Doors,
      required this.chair,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      Positioned(
          child: Container(
        height: size.height / 20,
      )),
      Positioned(
          bottom: size.height / 8,
          left: size.width / 4,
          child: Image.asset(CarImage)),
      Positioned(
        child: Container(
          height: size.height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0X12F9864A),
          ),

          //decoration: BoxDecoration(borderRadius: BorderRadius.all(),
          child: Column(children: [
            SizedBox(
              height: size.height / 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 10,
                ),
                Text(
                  CarName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  width: size.width / 1.7,
                ),
                Image.asset("images/agence_park/Star.png"),
                Text(
                  Evaluate,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 45,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 15,
                ),
                Image.asset("images/agence_park/Gearbox.png"),
                SizedBox(
                  width: size.width / 45,
                ),
                Text(
                  Etat,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
                SizedBox(
                  width: size.width / 30,
                ),
                Image.asset("images/agence_park/User Account.png"),
                SizedBox(
                  width: size.width / 45,
                ),
                Text(
                  chair.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
                SizedBox(
                  width: size.width / 30,
                ),
                Image.asset("images/agence_park/Car Door.png"),
                SizedBox(
                  width: size.width / 45,
                ),
                Text(
                  Doors,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 55,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 15,
                ),
                Image.asset("images/agence_park/Vector.png"),
                SizedBox(
                  width: size.width / 45,
                ),
                Text(
                  'Free cancelation',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
                SizedBox(
                  width: size.width / 3,
                ),
                Text(
                  price.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 249, 141, 65),
                    fontSize: 10.0,
                  ),
                ),
                Text(
                  'DA/Day',
                  style: TextStyle(
                    color: Color.fromARGB(255, 249, 141, 65),
                    fontSize: 8.0,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    ]);
  }
}
