import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class Searchmain extends StatefulWidget {
  const Searchmain({super.key});

  @override
  State<StatefulWidget> createState() => _Searchmain();
}

class _Searchmain extends State<Searchmain> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 40),
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
          ],
        ),
      )),
    );
  }
}
