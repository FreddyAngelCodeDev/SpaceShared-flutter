import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:space_code/Screens/myhomepage.dart';

class EndSignupPage extends StatefulWidget {
  const EndSignupPage({super.key});

  @override
  State<StatefulWidget> createState() => _EndSignupPage();
}

class _EndSignupPage extends State<EndSignupPage> {
  late String imagePath;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text(
                "Final del Registro",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 100,
                  ),
                  Positioned(
                    top: 150,
                    left: 140,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        color: Colors.black,
                        icon: Icon(BoxIcons.bx_image_alt, size: 30),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "*Obligatorio",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_user),
                        hintText: "Apodo",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: size.width * 0.5,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(
                        builder: (BuildContext context) {
                          return const MyHomePage();
                        },
                      ), (Route<dynamic> route) => false);
                    });
                  },
                  child: Text(
                    "Entrar",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
