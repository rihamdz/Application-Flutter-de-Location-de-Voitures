import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({super.key});

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  String? UK;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: Color(0xffF9864A),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70),
                        child: Text(
                          'Language',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(height: 24, width: 24),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 250, top: 50),
                    child: Text(
                      'Suggested',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('English(US)'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'uk',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('English(Uk)'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'sa',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xffA9A9A9),
                    endIndent: 35,
                    indent: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 280, top: 20),
                    child: Text(
                      'Others',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Mandarin'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'lk',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Hindi'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'pk',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('spanich'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'hk',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('French'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'rk',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Arabic'),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Radio(
                            activeColor: Color(0xffF9864A),
                            value: 'kk',
                            groupValue: UK,
                            onChanged: (val) {
                              setState(() {
                                UK = val;
                              });
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Indonesia'),
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Radio(
                      activeColor: Color(0xffF9864A),
                      value: 'lo',
                      groupValue: UK,
                      onChanged: (val) {
                        setState(() {
                          UK = val;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Russian'),
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Radio(
                      activeColor: Color(0xffF9864A),
                      value: 'kl',
                      groupValue: UK,
                      onChanged: (val) {
                        setState(() {
                          UK = val;
                        });
                      }),
                ),
              ],
            ),
            Divider(
              color: Color(0xffA9A9A9),
              endIndent: 35,
              indent: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 50, right: 30),
              child: Container(
                height: 35,
                width: 450,
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xfA9A9A9f),
                          blurRadius: 10,
                          offset: Offset(-1, 5))
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Add another Languages ',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.add_circle,
                        color: Color(0xffF9864A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
