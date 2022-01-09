// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:figmatest/size_config.dart';
import 'package:flutter/material.dart';

class Payment_ScreenPage extends StatefulWidget {
  const Payment_ScreenPage({Key? key}) : super(key: key);

  @override
  _Payment_ScreenPageState createState() => _Payment_ScreenPageState();
}

class _Payment_ScreenPageState extends State<Payment_ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(getProportionateScreenHeight(70)),
          child: AppBar(
              titleSpacing: -15,
              backgroundColor: Color(0xff341f74),
              //centerTitle: false,
              title: Text(
                "Add New Payment Method",
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
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0, bottom: 16, right: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Text(
                    //"$RandomNumber",
                    "Add credit card or debit card",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: getProportionateScreenHeight(16),
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    "Enter your credit/debit card  information. We will save  this  card  so you can use it again later",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: getProportionateScreenHeight(14),
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),

                  //=============================================1st field=============
                  Text(
                    "Card Number",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: getProportionateScreenHeight(16),
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEAECEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      //controller: cardNumController, //
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20),
                              vertical: getProportionateScreenWidth(15)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "0000 0000  0000  0000",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black.withOpacity(0.4)),
                          suffixIcon:
                              Icon(Icons.credit_card_rounded, size: 17.0)),
                    ),
                  ),

                  //============================================2nd field=============
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Text(
                    "Cardholder name",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: getProportionateScreenHeight(16),
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEAECEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      //controller: cardNumController, //
                      keyboardType: TextInputType.text,

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenWidth(15)),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "ex. Jonathan Paul Ive",
                        hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black.withOpacity(0.4)),
                        // suffixIcon:
                        //     Icon(Icons.credit_card_outlined, size: 17.0)
                      ),
                    ),
                  ),

                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.RED,
                          height: getProportionateScreenHeight(100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry date",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFf0f0f0),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.only(top: 10),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateScreenWidth(20),
                                          vertical:
                                              getProportionateScreenWidth(15)),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      hintText: "MM /YYYY",
                                      hintStyle: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black.withOpacity(0.4)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.BLUE,
                          height: getProportionateScreenHeight(100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "CVV",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  GestureDetector(
                                    onTap: () => () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                          "3 digit number on back of your card",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        backgroundColor: Color(0xff362477),
                                      ));
                                    },
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //     color: Color(0xffCEC2F8),
                                      //     borderRadius:
                                      //         BorderRadius.circular(50.0)),
                                      child: Icon(
                                        Icons.help_outline_sharp,
                                        color: Color(0xff362477),
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFf0f0f0),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.only(top: 10),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateScreenWidth(20),
                                          vertical:
                                              getProportionateScreenWidth(15)),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      hintText: "3-4 digits",
                                      hintStyle: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black.withOpacity(0.4)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //           color: Color(0xFFf0f0f0),
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         margin: EdgeInsets.only(top: 10),
                  //         child: Padding(
                  //           padding: EdgeInsets.symmetric(horizontal: 8.0),
                  //           child: TextFormField(
                  //             keyboardType: TextInputType.text,
                  //             decoration: InputDecoration(
                  //               contentPadding: EdgeInsets.symmetric(
                  //                   horizontal: getProportionateScreenWidth(20),
                  //                   vertical: getProportionateScreenWidth(15)),
                  //               border: InputBorder.none,
                  //               focusedBorder: InputBorder.none,
                  //               enabledBorder: InputBorder.none,
                  //               hintText: "MM/YYYY",
                  //               hintStyle: TextStyle(
                  //                   color: Colors.black.withOpacity(0.4)),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     //=====================================row
                  //     Expanded(
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //           color: Color(0xFFf0f0f0),
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  //         child: Padding(
                  //           padding: EdgeInsets.symmetric(horizontal: 8.0),
                  //           child: TextFormField(
                  //             textCapitalization: TextCapitalization.sentences,
                  //             keyboardType: TextInputType.text,
                  //             decoration: InputDecoration(
                  //               contentPadding: EdgeInsets.symmetric(
                  //                   horizontal: getProportionateScreenWidth(20),
                  //                   vertical: getProportionateScreenWidth(15)),
                  //               border: InputBorder.none,
                  //               focusedBorder: InputBorder.none,
                  //               enabledBorder: InputBorder.none,
                  //               hintText: "3-4 digits",
                  //               hintStyle: TextStyle(
                  //                   color: Colors.black.withOpacity(0.4)),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: getProportionateScreenHeight(150),
                  ),
                  Container(
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
                                Color(0XFFB130AA),
                              ]),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "ADD CARD",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(16),
                                color: Colors.white,
                                fontFamily: "Poppins",
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
