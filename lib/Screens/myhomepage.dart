import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:space_code/Screens/chat_main.dart';
import 'package:space_code/Screens/home_main.dart';
import 'package:space_code/Screens/notification_main.dart';
import 'package:space_code/Screens/post_main.dart';
import 'package:space_code/Screens/search_main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  final page = [
    const Homemain(),
    const Notificationmain(),
    const Postmain(),
    const Searchmain(),
    const Chatmain()
  ];

  PageController pCont = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: pCont,
        onPageChanged: (value) {
          pageIndex = value;
          setState(() {});
        },
        children: const [
          Homemain(),
          Notificationmain(),
          Searchmain(),
          Chatmain()
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(21, 20, 20, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                  pCont.jumpToPage(0);
                },
                icon: pageIndex == 0
                    ? const Icon(BoxIcons.bxs_home_alt_2,
                        color: Colors.white, size: 30)
                    : const Icon(BoxIcons.bx_home_alt_2,
                        color: Colors.white, size: 30)),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
                pCont.jumpToPage(1);
              },
              icon: pageIndex == 1
                  ? const Icon(BoxIcons.bxs_heart,
                      color: Colors.white, size: 30)
                  : const Icon(BoxIcons.bx_heart,
                      color: Colors.white, size: 30),
            ),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Postmain();
                    }));
                  });
                },
                icon: const Icon(BoxIcons.bx_plus_circle,
                    color: Colors.white, size: 30)),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                  pCont.jumpToPage(2);
                },
                icon: pageIndex == 2
                    ? const Icon(BoxIcons.bx_search_alt,
                        color: Colors.white, size: 30)
                    : const Icon(BoxIcons.bx_search,
                        color: Colors.white, size: 30)),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                  pCont.jumpToPage(3);
                },
                icon: pageIndex == 3
                    ? const Icon(BoxIcons.bxs_message_square_dots,
                        color: Colors.white, size: 30)
                    : const Icon(BoxIcons.bx_message_square_dots,
                        color: Colors.white, size: 30)),
          ],
        ),
      ),
    );
  }
}
