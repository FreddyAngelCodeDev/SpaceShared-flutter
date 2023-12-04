import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:space_code/models/usermodels.dart';

class Profilemain extends StatefulWidget {
  const Profilemain({super.key});

  @override
  State<StatefulWidget> createState() => _Profilemain();
}

class _Profilemain extends State<Profilemain> {
  @override
  void initState() {
    super.initState();
  }

  Future<Usuario> _obtenerUsuario() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;

    var url = 'http://192.168.250.5:2440/Api/User/me';
    var response = await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'
    });
    if (response.statusCode == 200) {
      print(response.body);
      return Usuario.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener el usuario');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 10),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.28,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        alignment: Alignment(-1, -1),
                        width: size.width * 0.92,
                        height: size.height * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.purpleAccent),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    BoxIcons.bx_arrow_back,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    BoxIcons.bx_dots_vertical_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: size.width * 0.26,
                      child: CircleAvatar(
                        maxRadius: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("",
                      style: GoogleFonts.roboto(
                          fontSize: 20, color: Colors.white)),
                  Text("",
                      style: GoogleFonts.roboto(
                          fontSize: 15, color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Seguidos: 0",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.white)),
                          SizedBox(width: size.width * 0.06),
                          Text("Seguidores: 0",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.white)),
                        ]),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
