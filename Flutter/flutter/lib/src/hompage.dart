import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'statspage.dart';
import 'bottomnav.dart';
import 'patient.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 251, 271, 1),
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Color.fromRGBO(19, 215, 188, 1), //19, 215, 188, 1
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hello, Parth',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorColor: Colors.white,
                        style:
                            TextStyle(color: Color.fromRGBO(244, 251, 247, 1)),
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: 'Search Doctors',
                            fillColor: Color.fromRGBO(7, 184, 159, 0.84),
                            filled: true,
                            focusColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                )),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Container(
              color: Color.fromRGBO(224, 251, 247, 1),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(FlutterIcons.ambulance_faw,
                                size: 70, color: Colors.red),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Emergency',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Short Description',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 30,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                print('Doctor Pressed');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        MaterialCommunityIcons.doctor,
                                        color: Color.fromRGBO(19, 215, 188, 1),
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Doctors',
                                        style: TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        'Short Description',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Patient()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        FlutterIcons.pie_chart_mdi,
                                        color: Color.fromRGBO(19, 215, 188, 1),
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Current Stats',
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      Text(
                                        'Short Description',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                print('Speciality pressed');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(FontAwesome5Solid.hands_helping,
                                          color:
                                              Color.fromRGBO(19, 215, 188, 1),
                                          size: 50),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Speciality',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                        'Short Description',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                print('Labs pressed');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(SimpleLineIcons.chemistry,
                                          size: 50,
                                          color:
                                              Color.fromRGBO(19, 215, 188, 1)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Labs',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                        'Short Description',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                print('Insurance pressed');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(FlutterIcons.documents_ent,
                                          size: 50,
                                          color:
                                              Color.fromRGBO(19, 215, 188, 1)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Insurance',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                        'Short Description',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                print('Consultation pressed');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.support_agent,
                                        color: Color.fromRGBO(19, 215, 188, 1),
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Consultation',
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      Text(
                                        'Short Description',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.greenAccent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: Colors.greenAccent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_view_day_outlined,
              color: Colors.greenAccent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.medical_services_outlined,
              color: Colors.greenAccent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_rounded,
              color: Colors.greenAccent,
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
