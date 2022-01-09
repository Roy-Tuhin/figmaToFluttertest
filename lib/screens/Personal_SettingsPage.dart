// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:date_time_picker/date_time_picker.dart';
import 'package:figmatest/screens/Easy_Alerts_Page.dart';
import 'package:figmatest/screens/Payment_screen.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

// ignore: camel_case_types
class Personal_SettingPage extends StatefulWidget {
  const Personal_SettingPage({Key? key}) : super(key: key);

  @override
  _Personal_SettingPageState createState() => _Personal_SettingPageState();
}

// ignore: camel_case_types
class _Personal_SettingPageState extends State<Personal_SettingPage> {
  String selectedCountry = "India";
  List<String> country = ["India", "US", "UK"];

  String selectedLanguage = "Bengali";
  List<String> language = ["Bengali", "Hindi", "English"];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(
        context); // getting device size, to give the app reposive feel (#MediaQuery)
    return GestureDetector(
      onTap: () => FocusScope.of(context)
          .unfocus(), // Will dispaire keyboard on tap on empty place
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(getProportionateScreenHeight(60)),
            child: AppBar(
                backgroundColor: Color(0xff341f74),
                //centerTitle: false,
                titleSpacing: -15,
                title: Text(
                  "Personal Settings",
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                leading: Icon(Icons.arrow_back_ios),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ]),
          ),
          //extendBodyBehindAppBar: flase,//
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              //========================================= CircleAvatar================
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Container(
                      //color: Colors.red,
                      height: getProportionateScreenHeight(115),
                      width: getProportionateScreenWidth(115),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              "assets/images/user.png",
                              //height: getProportionateScreenHeight(170),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 15,
                            child: SizedBox(
                              height: 35,
                              width: 36,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Color(0xffb130aa),
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(color: Colors.white)),
                                ),
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "Not yet ready to update profile pic :)"),
                                    backgroundColor: Color(0xff362477),
                                  ));
                                },
                                child: Icon(Icons.edit),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //====================================================Text Formfield start===========
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(18)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //===========================================Name:=======================================
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                    ),
                    NewCommonTextFieldWidget(
                      defaultValue: "Cameron Williamson",
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Text(
                      "Contact",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    NewCommonTextFieldWidget(
                      defaultValue: "test@gmail.com",
                    ),
                    //==========================================Date of birth================================
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Text(
                      "Date of Birth",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff8E8E8E),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DateTimePicker(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                dateMask: 'dd/MM/yyyy',
                                initialValue: DateTime.now().toString(),
                                type: DateTimePickerType.date,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: getProportionateScreenHeight(16),
                                  fontFamily: 'Poppins',
                                  color: Color(0xff362477),
                                ),
                                firstDate: DateTime(1800),
                                lastDate: DateTime(2050),
                                // This will add one year from current date
                                validator: (value) {
                                  return null;
                                },
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    setState(() {
                                      // _selectedDate = value;
                                    });
                                  }
                                },
                                onSaved: (value) {
                                  if (value!.isNotEmpty) {
                                    // _selectedDate = value;
                                  }
                                },
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 150),
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //========================================Country of residence==========================
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Text(
                      "Country of residence",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff8E8E8E),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          underline: Container(),
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          isExpanded: true,
                          onChanged: (value) {
                            setState(() {
                              selectedCountry = value!;
                            });
                          },
                          value: selectedCountry,
                          items: country
                              .map((state) => DropdownMenuItem(
                                    child: Text(
                                      state,
                                      maxLines: 2,
                                    ),
                                    value: state,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),

                    //===============================================Preffered lan dropdown================
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Text(
                      "Preffered language",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff8E8E8E),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          underline: Container(),
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          isExpanded: true,
                          onChanged: (value) {
                            setState(() {
                              selectedLanguage = value!;
                            });
                          },
                          value: selectedLanguage,
                          items: language
                              .map((state) => DropdownMenuItem(
                                    child: Text(
                                      state,
                                      maxLines: 2,
                                    ),
                                    value: state,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),

                    //==================================================phone==============================
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    NewCommonTextFieldWidget(
                      defaultValue: "+91",
                    ),
                  ],
                ),
              ),

              //=======================================Two buttons======================
              Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18, top: 17),
                  child: Container(
                    height: getProportionateScreenHeight(50),
                    width: getProportionateScreenWidth(340),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Easy_Alerts_Page(),
                              ),
                            );
                          },
                          child: Text(
                            "CHANGE PASSWORD",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: getProportionateScreenWidth(16),
                                color: Colors.black,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  )),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18, top: 17, bottom: 18),
                  child: Container(
                    height: getProportionateScreenHeight(50),
                    width: getProportionateScreenWidth(340),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0XFF362477),
                                // Color(0XFF362477),
                                Color(0XFFB130AA),
                              ]),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Payment_ScreenPage(),
                              ),
                            );
                          },
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(16),
                                color: Colors.white,
                                fontFamily: "Poppins",
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ))
            ],
          )),
    );
  }
}

class NewCommonTextFieldWidget extends StatelessWidget {
  const NewCommonTextFieldWidget({
    Key? key,
    required this.defaultValue,
  }) : super(key: key);
  final String defaultValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        initialValue:
            defaultValue, //=======================default name will show
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(15)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xff362477))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xffb130aa))),
        ),
      ),
    );
  }
}
