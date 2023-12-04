import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:space_code/Screens/myhomepage.dart';
import 'package:space_code/Screens/signup_page_main.dart';

class LoginPageMain extends StatefulWidget {
  const LoginPageMain({super.key});

  @override
  State<LoginPageMain> createState() => _LoginPageMain();
}

class _LoginPageMain extends State<LoginPageMain> {
  final email = TextEditingController();
  final pass = TextEditingController();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 80, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SPACESHARED",
                      style: TextStyle(
                          fontFamily: 'Fifa',
                          fontSize: 40,
                          color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.35),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_at),
                        hintText: "Email",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: pass,
                      obscureText: true,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_lock_alt),
                        hintText: "Contraseña",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: size.width * 0.5,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      onPressed: email.text == "" || pass.text == ""
                          ? null
                          : () {
                              setState(() {
                                _isLoading = true;
                              });
                              signIn(email.text, pass.text);
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
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "¿No tienes una cuenta?",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const SignupPageMain();
                            }));
                          });
                        },
                        child: Text(
                          "Registrate",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email_user': email, 'password_user': pass};
    var jsonResponse;
    var url = 'http://192.168.250.5:2440/Api/User/login';
    var response = await http.post(Uri.parse(url), body: data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse);

        Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(
          builder: (BuildContext context) {
            return const MyHomePage();
          },
        ), (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }
}
