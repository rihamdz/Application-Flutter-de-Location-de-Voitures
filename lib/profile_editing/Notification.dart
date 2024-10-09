import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pageNot extends StatefulWidget {
  const pageNot({super.key});

  @override
  State<pageNot> createState() => hi();
}

class hi extends State<pageNot> {
  bool Value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 76),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Icon(Icons.arrow_back_sharp, size: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    'Notification',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(height: 24, width: 24),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 260, top: 50, bottom: 10),
              child: Text(
                'Common',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('General Notification'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Sound'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Vibrate'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Divider(
              color: Color(0xffA9A9A9),
              endIndent: 35,
              indent: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Divider(
                color: Color(0xffA9A9A9),
                endIndent: 35,
                indent: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 130, top: 20, bottom: 10),
              child: Text(
                'System & services update',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('App updates'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Bill Reminder'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Promotion'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Discount Avaiable'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Payment Request'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(
                color: Color(0xffA9A9A9),
                endIndent: 35,
                indent: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 280, top: 10, bottom: 10),
              child: Text(
                'Others',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('New Service Available'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('New Tips Available'),
                ),
                Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          activeColor: Color(0xffF9864A),
                          value: Value,
                          onChanged: (val) {
                            setState(() {
                              Value = val;
                            });
                          }),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
