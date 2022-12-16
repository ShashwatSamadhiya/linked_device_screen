// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class device_history extends StatefulWidget {
  const device_history({super.key});

  @override
  State<device_history> createState() => _device_historyState();
}

class _device_historyState extends State<device_history> {
  int countlinkedevices = 0;

  Widget header(BuildContext context) {
    return Container(
      height: 49,
      color: Color(0xfff1c1c1e),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 15,
            height: 24,
            margin: EdgeInsets.only(left: 19.5, top: 13.5),
            child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Icon(
                        color: Color(0xfff8E8E93),
                        IconData(0xef4d,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true)),
                  ),
                ))),
        SizedBox(
          width: 98.5,
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text(
            "DEVICES HISTORY",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: .3),
          ),
        )
      ]),
    );
  }

  Widget card(BuildContext context) {
    return Container(
      width: 358,
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(top: 49 + 22, left: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 16,
              ),
              Container(
                margin: EdgeInsets.only(top: 22),
                child: Image.asset("assests/images/safari.png"),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: Text(
                      "Safari browser",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        //letterSpacing: .3
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                  Container(
                      child: RichText(
                    text: TextSpan(
                        text: "Last activity",
                        style: TextStyle(
                          color: Color(0xfff8e8e93),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                              text: " 22 Jan, 2022 at 12:49",
                              style: TextStyle(
                                color: Color(0xfff8e8e93),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ))
                        ]),
                  )),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 26, left: 278),
          child: Text(
            "REMOVE",
            style: TextStyle(
              color: Color(0xfffff453a),
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        )
      ]),
    );
  }

  Widget build(BuildContext context) {
    //print(currentprog);
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(color: Colors.black),
              constraints: BoxConstraints(
                maxHeight: 797,
                maxWidth: 390,
              ),
              child: Column(
                children: [
                  Stack(children: [
                    header(context),
                    card(
                      context,
                    )
                  ]),
                ],
              ))),
    );
  }
}
