import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class rating extends StatefulWidget {
  const rating({super.key});

  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;
  TextEditingController addcomment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd, // <-- SEE HERE
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 20),
                    child: Container(
                      child: Image.asset("images/agence_park/Ellipse 23.png"),
                    ),
                  ),
                ),
                Container(
                    child: Image.asset("images/agence_park/Ellipse 24.png")),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 280, 0, 20),
                  child: Container(
                    child: Image.asset("images/agence_park/Oval 2.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 28, 0, 20),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 40, 0),
                            child: Image.asset(
                                "images/agence_park/Left Accessory.png")),
                        SizedBox(
                          width: 106,
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
                children: [
                  Text(
                    'How is your experience ? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''Your feedback will help improve
                 driving experience''',
                    style: TextStyle(
                      color: Color(0xff8a8a8f),
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: new Container(
                height: 10.0,
                width: 500.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(Icons.star),
                      onPressed: () => setState(() {
                        _myColorOne = Colors.orange;
                      }),
                      color: _myColorOne,
                    ),
                    new IconButton(
                      icon: new Icon(Icons.star),
                      onPressed: () => setState(() {
                        _myColorOne = Colors.orange;
                        _myColorTwo = Colors.orange;
                        _myColorThree = Colors.grey;
                        _myColorFour = Colors.grey;
                        _myColorFive = Colors.grey;
                      }),
                      color: _myColorTwo,
                    ),
                    new IconButton(
                      icon: new Icon(Icons.star),
                      onPressed: () => setState(() {
                        _myColorOne = Colors.orange;
                        _myColorTwo = Colors.orange;
                        _myColorThree = Colors.orange;
                        _myColorFour = Colors.grey;
                        _myColorFive = Colors.grey;
                      }),
                      color: _myColorThree,
                    ),
                    new IconButton(
                      icon: new Icon(Icons.star),
                      onPressed: () => setState(() {
                        _myColorOne = Colors.orange;
                        _myColorTwo = Colors.orange;
                        _myColorThree = Colors.orange;
                        _myColorFour = Colors.orange;
                        _myColorFive = Colors.grey;
                      }),
                      color: _myColorFour,
                    ),
                    new IconButton(
                      icon: new Icon(Icons.star),
                      onPressed: () => setState(() {
                        _myColorOne = Colors.orange;
                        _myColorTwo = Colors.orange;
                        _myColorThree = Colors.orange;
                        _myColorFour = Colors.orange;
                        _myColorFive = Colors.orange;
                      }),
                      color: _myColorFive,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: addcomment,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: "Additional Comment",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 27, 0, 0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(85, 7, 50, 0),
                    child: Text(
                      'Submit Review',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ));
  }
}
