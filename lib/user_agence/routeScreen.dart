import 'package:cargo/home/contactScreen.dart';
import 'package:cargo/user_agence/Agence_Main_Page.dart';
import 'package:cargo/user_agence/Agence_Notification.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home/NavBar.dart';

class routPage extends StatefulWidget {
  const routPage({super.key});

  @override
  State<routPage> createState() => _routPageState();
}

class _routPageState extends State<routPage> {
  int index = 0;
  final _bottomNavigationKey = GlobalKey<CurvedNavigationBarState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      agenceMainView(),
      ContactScreen(),
      AgenceNotificationView(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: false,
        key: _key,
        appBar: index == 0
            ? AppBar(
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.white, // <-- SEE HERE
                  statusBarIconBrightness:
                      Brightness.dark, //<-- For Android SEE HERE (dark icons)
                  statusBarBrightness:
                      Brightness.light, //<-- For iOS SEE HERE (dark icons)
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xffF9864A),
                    size: 37,
                  ),
                  onPressed: () {
                    _key.currentState!.openDrawer();
                  },
                ),
                actions: [
                  Container(
                    height: 40,
                    // ignore: sort_child_properties_last
                    child: const Image(
                      image: AssetImage("images/icons/face.png"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xffF9864A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ],
              )
            : index == 1
                ? AppBar(
                    toolbarHeight: 70,
                    backgroundColor: Color(0xffF9864A),
                    leading: Expanded(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset("images/Oval.png"),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text(
                            "Chats",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    leadingWidth: 500,
                    actions: [
                      Image.asset("images/ui.png"),
                    ],
                  )
                : AppBar(
                    toolbarHeight: 75,
                    backgroundColor: Color(0xffF9864A),
                    centerTitle: true,
                    leading: Container(),
                    title: const Text(
                      "Notification",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                    ),
                    actions: [
                      Image.asset("images/ui.png"),
                    ],
                  ),
        drawer: NavBar(),
        backgroundColor: Colors.white,
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          color: const Color(0xffF9864A),
          backgroundColor: Colors.transparent,
          height: 62,
          index: index,
          items: const [
            ImageIcon(
              AssetImage("images/icons/home.png"),
              color: Colors.white,
            ),
            ImageIcon(
              AssetImage("images/icons/message.png"),
              color: Colors.white,
            ),
            ImageIcon(
              AssetImage("images/icons/notification.png"),
              color: Colors.white,
            ),
          ],
          key: _bottomNavigationKey,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
