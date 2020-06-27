import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/TextBox.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:feelsgood/Styling/Constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: kScreenColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Image.asset(
                "images/logo.png",
                height: 130,
                width: 240,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 21),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Anything, Anytime",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              fontFamily: 'Open Sans'),
                        ),
                        Text(
                          "Right Away!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              fontFamily: 'Open Sans'),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      TextBox(hintText: "Email"),
                      TextBox(hintText: "Password"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 32, top: 3),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                FlutterSwitch(
                                  toggleColor: Colors.grey,
                                  inactiveColor: Colors.black,
                                  activeColor: Colors.white70,
                                  width: 58.0,
                                  height: 25.0,
                                  valueFontSize: 12.0,
                                  toggleSize: 18.0,
                                  value: status,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Remember?",
                                      style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Open Sans'),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 32, top: 3),
                            child: Text("Forgot Password?",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Open Sans'),
                                )),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, left: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "By signing up you Agree to our Terms and Conditions",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 30,
                          width: 160,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            color: Color(0xFFD19139),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 0),
                              child: Text(
                                "PROCEED",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "images/scooter.png",
                    height: 130,
                    width: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
