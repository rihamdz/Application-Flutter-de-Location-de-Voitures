import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:cargo/car/car.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Booking extends StatefulWidget {
  final String duration;

  const Booking(this.duration);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/iconns/flesh.png')),
              SizedBox(
                width: 70,
              ),
              const Text(
                'Your Booking',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Text(
              'Your Booking :',
              style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 30, 40),
                height: 250,
                width: 250,
                child: Image.asset('images/agence_park/car01.png'),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Audi'),
                    Text(''),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 17, 0, 17),
            margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 250, 213, 194),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              children: [
                Icon(Icons.schedule),
                SizedBox(
                  width: 10,
                ),
                Text('Renting Time'),
                SizedBox(
                  width: 110,
                ),
                Text('${widget.duration} Days'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 85, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Total ',
                            ),
                            TextSpan(
                              text: '(days)',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.4,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: 150,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFff9864A), width: 0.6),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                      fontFamily: 'mulish',
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                )),
                          ))
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('price'),
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                      decoration: BoxDecoration(
                          color: Color(0xffF9864A),
                          borderRadius: BorderRadius.circular(30)),
                      child: AnimatedButton(
                        text: 'Checkout',
                        color: Color(0xffF9864A),
                        pressEvent: () {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.leftSlide,
                            headerAnimationLoop: false,
                            dialogType: DialogType.success,
                            showCloseIcon: true,
                            title: 'Booking Successful',
                            desc: 'Your booking has been confirm',
                            btnOkColor: Color(0xffF9864A),
                            btnOkOnPress: () {
                              debugPrint('OnClcik');
                            },
                            btnOkIcon: Icons.check_circle,
                            onDismissCallback: (type) {
                              debugPrint('Dialog Dissmiss from callback $type');
                            },
                          ).show();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
