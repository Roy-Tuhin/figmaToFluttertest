// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../size_config.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Easy_Alerts_Page extends StatefulWidget {
  const Easy_Alerts_Page({Key? key}) : super(key: key);

  @override
  _Easy_Alerts_PageState createState() => _Easy_Alerts_PageState();
}

class _Easy_Alerts_PageState extends State<Easy_Alerts_Page> {
  bool isToggled = true;
  bool bannerToggled = false;
  bool gentleNotiToggled = true;
  bool allowInterruptionsToggled = true;
  int _radioSelected = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(getProportionateScreenHeight(70)),
          child: AppBar(
              backgroundColor: Color(0xff341f74),
              //centerTitle: false,
              titleSpacing: -15,
              title: Text(
                "Easy Alerts",
                style: TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ]),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenHeight(25)),
                height: getProportionateScreenHeight(90),
                width: getProportionateScreenWidth(340),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomLeft,
                    end: FractionalOffset.topRight,
                    colors: [
                      Color(0xff550EB9),
                      Color(0xffA508C3),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Allow Notifications",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: getProportionateScreenHeight(16),
                                fontWeight: FontWeight.w600),
                          ),
                          FlutterSwitch(
                            height: getProportionateScreenHeight(25),
                            width: getProportionateScreenWidth(47.23),
                            padding: 4.0,
                            toggleSize: 18.0,
                            toggleColor: Color(0xffA508C3),
                            borderRadius: 10.0,
                            activeColor: Colors.white,
                            value: isToggled,
                            onToggle: (value) {
                              setState(() {
                                isToggled = value;
                              });
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                //=====================Gentle Notification
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(10)),
                child: ListTile(
                  title: Text(
                    "Gentle Notification",
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                  trailing: Container(
                    height: getProportionateScreenHeight(25),
                    width: getProportionateScreenWidth(47.23),
                    child: FlutterSwitch(
                      height: getProportionateScreenHeight(25),
                      width: getProportionateScreenWidth(47.23),
                      padding: 4.0,
                      toggleSize: 18.0,
                      toggleColor: Colors.white,
                      borderRadius: 10.0,
                      activeColor: Color(0xff550EB9),
                      value: gentleNotiToggled,
                      onToggle: (value) {
                        setState(() {
                          gentleNotiToggled = value;
                        });
                      },
                    ),
                  ),
                  subtitle: Text(
                    "Silence notification and only show them in the notification panel",
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                )),
            Padding(
              //=====================Banners
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(10)),
              child: ListTile(
                title: Text(
                  "Banners",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                trailing: Container(
                  height: getProportionateScreenHeight(25),
                  width: getProportionateScreenWidth(47.23),
                  child: FlutterSwitch(
                    height: getProportionateScreenHeight(25),
                    width: getProportionateScreenWidth(47.23),
                    padding: 4.0,
                    toggleSize: 18.0,
                    toggleColor: Colors.white,
                    borderRadius: 10.0,
                    activeColor: Color(0xff550EB9),
                    inactiveColor: Colors.black,
                    value: bannerToggled,
                    onToggle: (value) {
                      setState(() {
                        bannerToggled = value;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  "Display on the top of the Status bar",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(25),
                  vertical: getProportionateScreenHeight(10)),
              child: Text(
                "Lock Screen Notifications",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(16),
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _radioSelected,
                        activeColor: Color(0xffA508C3),
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as int;
                          });
                        },
                      ),
                      Text(
                        'Show',
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _radioSelected,
                        activeColor: Color(0xffA508C3),
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as int;
                          });
                        },
                      ),
                      Text(
                        'Do not show',
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: _radioSelected,
                        activeColor: Color(0xffA508C3),
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as int;
                          });
                        },
                      ),
                      Text(
                        'Show but hide contents',
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              //=====================Allow interruptions
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(10)),
              child: ListTile(
                title: Text(
                  "Allow interruptions",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                trailing: Container(
                  height: getProportionateScreenHeight(25),
                  width: getProportionateScreenWidth(47.23),
                  child: FlutterSwitch(
                    height: getProportionateScreenHeight(25),
                    width: getProportionateScreenWidth(47.23),
                    padding: 4.0,
                    toggleSize: 18.0,
                    toggleColor: Colors.white,
                    borderRadius: 10.0,
                    activeColor: Color(0xff550EB9),
                    value: allowInterruptionsToggled,
                    onToggle: (value) {
                      setState(() {
                        allowInterruptionsToggled = value;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  "Receive notification from this app even when Do not disture is enabled",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            Padding(
              //=====================Allow interruptions
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: ListTile(
                title: Text(
                  "Promotions",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                trailing: Container(
                  height: getProportionateScreenHeight(25),
                  width: getProportionateScreenWidth(47.23),
                  child: FlutterSwitch(
                    height: getProportionateScreenHeight(25),
                    width: getProportionateScreenWidth(47.23),
                    padding: 4.0,
                    toggleSize: 18.0,
                    toggleColor: Colors.white,
                    borderRadius: 10.0,
                    activeColor: Color(0xff550EB9),
                    value: allowInterruptionsToggled,
                    onToggle: (value) {
                      setState(() {
                        allowInterruptionsToggled = value;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  "Receive offers and promotions from Ogla",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            Padding(
              //=====================Reminders
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: ListTile(
                title: Text(
                  "Reminders",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                trailing: Container(
                  height: getProportionateScreenHeight(25),
                  width: getProportionateScreenWidth(47.23),
                  child: FlutterSwitch(
                    height: getProportionateScreenHeight(25),
                    width: getProportionateScreenWidth(47.23),
                    padding: 4.0,
                    toggleSize: 18.0,
                    toggleColor: Colors.white,
                    borderRadius: 10.0,
                    activeColor: Color(0xff550EB9),
                    value: allowInterruptionsToggled,
                    onToggle: (value) {
                      setState(() {
                        allowInterruptionsToggled = value;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  "Receive device notification to remind you when you are reaching a goal deadline",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
