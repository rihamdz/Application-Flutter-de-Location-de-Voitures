import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pv extends StatefulWidget {
  const Pv({super.key});

  @override
  State<Pv> createState() => _PvState();
}

class _PvState extends State<Pv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 45,
                  ),
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(height: 24, width: 24),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 150, top: 20, left: 50),
            child: Text(
              '1.Types Data we collect',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10, right: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 50, top: 20, right: 20),
              child: Text(
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.')),
          Padding(
            padding: EdgeInsets.only(right: 100, top: 10, left: 40),
            child: Text(
              '2.Use of Your Personal data',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 5, right: 20),
            child: Text(
                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10, right: 20),
            child: Text(
                'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 60, top: 10, left: 50),
            child: Text(
              '3.Disclosure Of your personal data ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10, right: 20),
            child: Text(
                'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. '),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10, right: 20),
            child: Text(
                'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. '),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10, right: 20),
            child: Text(
                'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus'),
          ),
          Spacer(flex: 1),
          Container(
            height: 5,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
