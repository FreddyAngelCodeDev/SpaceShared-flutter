import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:space_code/widgets/menu_chat_options.dart';

class Chatmain extends StatefulWidget {
  const Chatmain({super.key});

  @override
  State<StatefulWidget> createState() => _Chatmain();
}

class _Chatmain extends State<Chatmain> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Chats",
          style:
              TextStyle(fontFamily: 'Fifa', fontSize: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              BoxIcons.bx_box,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              BoxIcons.bx_group,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              BoxIcons.bx_message_square_add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(children: [
                    SizedBox(
                      width: size.width * 0.77,
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Buscar",
                          hintStyle: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        BoxIcons.bx_search,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                  height: size.height * 0.78,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    CircleAvatar(maxRadius: 30),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: SizedBox(
                                        width: size.width * 0.56,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nombre User",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Mensaje hola como estas yo bien quie mas todo fino.",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    MenuChatOptions()
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
