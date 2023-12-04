import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class Menuitemnotification extends StatelessWidget {
  const Menuitemnotification({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        icon: const Icon(
          BoxIcons.bx_dots_vertical_rounded,
          color: Colors.white,
          size: 30,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: Colors.black54,
        itemBuilder: (context) {
          return <PopupMenuEntry<int>>[
            PopupMenuItem(
                child: ListTile(
              title: Text(
                "No me interesa",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )),
            PopupMenuItem(
                child: ListTile(
              title: Text(
                "Reportar",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )),
            PopupMenuItem(
                child: ListTile(
              title: Text(
                "Eliminar",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ))
          ];
        });
  }
}
