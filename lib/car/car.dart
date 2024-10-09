import 'package:cargo/data/app_data.dart';
import 'package:cargo/models/Car_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:cargo/car/Booking.dart';
import 'package:date_format/date_format.dart';

import '../models/agence_model.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.fromLTRB(11, 18, 21, 33),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(25),
            ),
            child: carPage(),
          ),
        ),
      ),
    );
  }
}

class carPage extends StatefulWidget {
  const carPage({super.key});

  @override
  State<carPage> createState() => _carPageState();
}

class _carPageState extends State<carPage> {
  DateTimeRange selectDates =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  void SelectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Booking(selectDates.duration.inDays.toString());
    }));
  }

  int i = 0;
  int j = 0;
  @override
  Widget build(BuildContext context) {
    CarModel myCar = car[i];
    AgenceModel myAgence = agence[j];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/iconns/flesh.png')),
            LikeButton(),
          ],
        ),
        Container(
          width: double.infinity,
          height: 200,
          child: Stack(
            children: [
              Positioned(
                left: 150,
                top: 0,
                child: Text(
                  myCar.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.255,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 50, 30, 20),
                  child: Image.asset(
                    myCar.img,
                  ),
                ),
              ),
              Positioned(
                left: 290,
                top: 90,
                child: Align(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        while (i <= car.length) {
                          if (i < car.length) {
                            i++;
                          } else {
                            i = 0;
                          }
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 90,
                child: Align(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        while (i >= 0) {
                          if (i > 0) {
                            i--;
                          } else {
                            i = car.length;
                          }
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 140,
                child: Align(
                  child: SizedBox(
                      width: 250,
                      height: 50,
                      child: Image.asset('images/iconns/Ellipse.png')),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
                child: const Text(
                  'Specification',
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.255,
                    color: Color(0xfff9864a),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 110,
                        height: 63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0588235855),
                          border: Border.all(
                            color: Color(0xffe8e8e8),
                          ),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage('images/iconns/Vector.png'),
                                color: Color(0xfff9864a),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                myCar.injection,
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 11.4264707565,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2000000334,
                                  color: Color(0xff292d32),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                // commonfuelinjection
                                'Common  Fuel Injection',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2000000477,
                                  color: Color(0xff898a8d),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          width: 110,
                          height: 63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0588235855),
                            border: Border.all(
                              color: Color(0xffe8e8e8),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ImageIcon(
                                AssetImage('images/iconns/seat.png'),
                                color: Color(0xfff9864a),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'cool seat',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff292d32),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Temp Control on seat',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2000000477,
                                  color: Color(0xff898a8d),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              )
                            ],
                          )),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 110,
                        height: 63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0588235855),
                          border: Border.all(
                            color: Color(0xffe8e8e8),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageIcon(
                              AssetImage('images/iconns/speed.png'),
                              color: Color(0xfff9864a),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Acceleration',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff292d32),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '0 - ${myCar.acceliration}km / 11s',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                height: 1.2000000477,
                                color: Color(0xff898a8d),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 13, 0, 15),
          padding: EdgeInsets.fromLTRB(6.5, 20, 6.5, 17),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xffe2e2e2),
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 7),
                height: 45,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          width: 230,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 3),
                                child: Text(
                                  myCar.name,
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    height: 0.9,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 244, 225, 49),
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        '${myCar.star}',
                                        style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.bold,
                                          height: 1.255,
                                          color: Color(0xff0c0c0c),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        '(230 Reviews)',
                                        style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 1.255,
                                          color: Color(0xff1d1d1d),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          style: const TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 0.9,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: '${myCar.price} D.A\n',
                              style: const TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.125,
                                color: Color(0xff343291),
                              ),
                            ),
                            const TextSpan(
                              text: '/ per day',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 160,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage('images/iconns/seatt.png'),
                                color: Color(0xfff9864a),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${myCar.seats}  seats',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.34375,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const ImageIcon(
                                AssetImage('images/iconns/door.png'),
                                color: Color(0xfff9864a),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${myCar.doors} doors',
                                style: const TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.34375,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          child: Row(
                            children: [
                              const ImageIcon(
                                AssetImage('images/iconns/status.png'),
                                color: Color(0xfff9864a),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${myCar.etat}',
                                style: const TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.34375,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage('images/iconns/clima.png'),
                                color: Color(0xfff9864a),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${myCar.Condition}',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.34375,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          margin: EdgeInsets.only(bottom: 7, top: 20),
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset(myAgence.image)),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    myAgence.name,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      letterSpacing: -0.34,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    'Renter',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      letterSpacing: -0.34,
                      color: Color(0x3f000000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 65,
              ),
              OutlinedButton(
                onPressed: () {},
                child: ImageIcon(
                  AssetImage('images/iconns/message.png'),
                  color: Color(0xffff6f23),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              OutlinedButton(
                onPressed: () {},
                child: ImageIcon(
                  AssetImage('images/iconns/phone.png'),
                  color: Color(0xffff6f23),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(
                'Pick a date',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                  color: Color(0xfff9864a),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 145, 0),
                    child: Text(
                      'U have ${selectDates.duration.inDays} Days',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: Color(0x63000000),
                      ),
                    ),
                  ),
                  Container(
                      child: TextButton(
                          onPressed: () async {
                            final DateTimeRange? dateTimeRange =
                                await showDateRangePicker(
                              context: context,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                              initialDateRange: selectDates,
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: const ColorScheme.light(
                                      primary:
                                          Color(0xffF9864A), // <-- SEE HERE
                                      onPrimary: Color.fromARGB(
                                          255, 67, 67, 67), // <-- SEE HERE
                                      onSurface: Colors.black, // <-- SEE HERE
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        primary: Color.fromARGB(255, 20, 20,
                                            20), // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );
                            if (dateTimeRange != null) {
                              setState(() {
                                selectDates = dateTimeRange;
                              });
                            }
                          },
                          child: ImageIcon(
                            AssetImage('images/iconns/date.png'),
                            color: Color(0xfff9864a),
                          ))),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 25, top: 10),
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xFff9864A),
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () {
              SelectScreen(context);
            },
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1.2125,
                  letterSpacing: -0.48,
                  color: Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'Rent  Now   ${myCar.price}   D.A ',
                  ),
                  TextSpan(
                    text: '/day',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      letterSpacing: -0.48,
                      color: Color(0x99ffffff),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
