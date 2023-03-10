// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:linked_device/device_history.dart';

class linked_ extends StatefulWidget {
  const linked_({super.key});

  @override
  State<linked_> createState() => _linked_State();
}

class _linked_State extends State<linked_> {
  int countlinkedevices = 0;

  Widget history(BuildContext context) {
    return Container(
        width: 346,
        height: 24,
        margin:
            EdgeInsets.only(top: countlinkedevices > 0 ? 638 : 472, left: 21.5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Device History",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 83)),
            Container(
              width: 35,
              height: 24,
              decoration: BoxDecoration(
                color: Color(0xfff3a3a3c),
                borderRadius: BorderRadius.circular(100),
              ),
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const device_history()),
                  );
                },
                child: Container(
                    width: 15,
                    height: 24,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Icon(
                          color: Color(0xfff8E8E93),
                          IconData(0xee8c,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true)),
                    )),
              ),
            )
          ],
        ));
  }

  Widget header(BuildContext context) {
    return Container(
      height: 49,
      color: Color(0xfff1c1c1e),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 15,
            height: 24,
            margin: EdgeInsets.only(left: 19.5, top: 13.5),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Icon(
                  color: Color(0xfff8E8E93),
                  IconData(0xef4d,
                      fontFamily: 'MaterialIcons', matchTextDirection: true)),
            )),
        SizedBox(
          width: 98.5,
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text(
            "LINKED DEVICES",
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

  Widget Img(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 94, top: 102),
      child: Image.asset("assests/images/links.png"),
    );
  }

  Widget heading(BuildContext context) {
    return Container(
      width: 355,
      height: 21,
      margin: EdgeInsets.only(left: 19, top: 265),
      child: Text(
        "Access Dialr on web",
        textAlign: TextAlign.center,
        style: TextStyle(
            letterSpacing: .3,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16),
      ),
    );
  }

  Widget Button(BuildContext context) {
    return Container(
        width: 358,
        height: 52,
        margin: EdgeInsets.only(left: 16, top: 302),
        padding: EdgeInsets.only(
          top: 15,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(0.1713913),
                colors: [
                  Color(0xffC241FF).withOpacity(1),
                  Color(0xff25C3D8).withOpacity(1),
                ]),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(100)),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                //  backgroundColor: Color.fromARGB(255, 241, 221, 221),
                title: Text('Link New Device',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              Color.fromARGB(255, 183, 67, 237).withOpacity(1),
                              Color(0xff25C3D8).withOpacity(1),

                              //add more color here.
                            ],
                          ).createShader(Rect.fromLTWH(50, 50, 250.0, 260.0)))),
                content: const Text('To link more than 1 device get premium'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Continue'),
                    child: Text('Continue',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            foreground: Paint()
                              ..shader = LinearGradient(
                                colors: <Color>[
                                  Color.fromARGB(255, 183, 67, 237)
                                      .withOpacity(1),
                                  Color(0xff25C3D8).withOpacity(1),

                                  //add more color here.
                                ],
                              ).createShader(
                                  Rect.fromLTWH(120, 120, 350.0, 360.0)))),
                  ),
                ],
              ),
            ),
            child: Text(
              "Scan QR code on screen",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: .3,
              ),
            ),
          ),
        ));
  }

  Widget linkedno(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 408, left: 18),
      child: Text(
        "${countlinkedevices} Linked Device",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
      ),
    );
  }

  Widget card(BuildContext context) {
    return Container(
      width: 358,
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(top: 456, left: 16),
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
            "LOGOUT",
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
                    Img(context),
                    heading(context),
                    Button(context),
                    Container(
                      margin: EdgeInsets.only(top: 387, left: 16, right: 16),
                      child: Divider(
                        height: .001,
                        color: Colors.grey,
                      ),
                    ),
                    linkedno(context),
                    countlinkedevices > 0 ? card(context) : Container(),
                    history(context)
                  ]),
                ],
              ))),
    );
  }
}
