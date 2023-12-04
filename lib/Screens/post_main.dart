import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class Postmain extends StatefulWidget {
  const Postmain({super.key});

  @override
  State<StatefulWidget> createState() => _Postmain();
}

class _Postmain extends State<Postmain> {
  TextEditingController textarea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 20),
          child: Row(
            children: [
              const Text(
                "Nueva Publicacion",
                style: TextStyle(
                    fontFamily: 'Fifa', fontSize: 30, color: Colors.white),
              ),
              const Spacer(),
              Container(
                  height: 45,
                  width: 45,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close,
                          color: Colors.white, size: 30)))
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "¿En que estas pensando?",
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(width: 1, color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                cursorColor: Colors.white,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(children: [
                    SizedBox(
                      width: 100,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_photo_alternate_outlined,
                              color: Colors.white,
                              size: 30.5,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(BoxIcons.bx_image_add),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      child: Text("Publicar"),
                      onPressed: () {},
                    ),
                  ]),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
