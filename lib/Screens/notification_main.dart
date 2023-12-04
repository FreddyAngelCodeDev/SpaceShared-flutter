import 'package:flutter/material.dart';

import 'package:space_code/widgets/menu_item_notification.dart';

class Notificationmain extends StatefulWidget {
  const Notificationmain({super.key});

  @override
  State<StatefulWidget> createState() => _Notificationmain();
}

class _Notificationmain extends State<Notificationmain> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Notificaciones",
          style:
              TextStyle(fontFamily: 'Fifa', fontSize: 30, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                height: size.height * 0.85,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
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
                                      ),
                                    ),
                                    Menuitemnotification()
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
