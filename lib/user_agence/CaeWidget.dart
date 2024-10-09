import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarWidget extends StatelessWidget {
  final controller;
  final String CarName;
  final String etat;
  final String doors;
  final String vitesse;
  final String Condition;
  final String CarImg;

  const CarWidget({
    super.key,
    required this.controller,
    required this.CarName,
    required this.etat,
    required this.doors,
    required this.vitesse,
    required this.Condition,
    required this.CarImg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text(CarName), Image.asset(CarImg)],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset("images/icons/etat.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(etat),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("images/icons/dor.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(doors.toString() + "Doors"),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("images/icons/vitesse.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(vitesse.toString() + " Km"),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("images/icons/dor.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(Condition),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
