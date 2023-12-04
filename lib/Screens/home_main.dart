import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:space_code/Screens/profile_main.dart';
import 'package:space_code/widgets/bottom_comentario_shetts.dart';

class Homemain extends StatefulWidget {
  const Homemain({super.key});

  @override
  State<StatefulWidget> createState() => _HomeMain();
}

class _HomeMain extends State<Homemain> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return const Profilemain();
                }));
              });
            },
            icon: const Icon(
              BoxIcons.bx_menu,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        centerTitle: true,
        title: const FittedBox(
          child: Text(
            "SPACE SHARED",
            style: TextStyle(
                fontFamily: 'Fifa', fontSize: 30, color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return const Profilemain();
                    }));
                  });
                },
                icon: const CircleAvatar()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.80,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Nombre",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          BoxIcons.bx_dots_vertical_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(BoxIcons.bx_heart),
                                        color: Colors.white,
                                        iconSize: 30,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          showBottomSheet(
                                            context: context,
                                            backgroundColor: Colors.black,
                                            elevation: 20,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            builder: (context) =>
                                                BottomComentarioShett(),
                                          );
                                        },
                                        icon: const Icon(BoxIcons.bx_comment),
                                        color: Colors.white,
                                        iconSize: 30,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(BoxIcons.bx_bookmark),
                                        color: Colors.white,
                                        iconSize: 30,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(BoxIcons.bx_share),
                                        color: Colors.white,
                                        iconSize: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
