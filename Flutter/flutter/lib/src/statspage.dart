import 'package:flutter/material.dart';

import 'horview1.dart';
import 'horview2.dart';

class StatsPage extends StatefulWidget {
  List horList = ["1", "2", "3", "4", "5", "6"];
  var patientData;

  StatsPage(this.patientData);
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromRGBO(157, 156, 181, 1)),
        actions: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(255, 106, 131, 1),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'Nurse',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(157, 156, 181, 1)),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 15),
              child: Icon(Icons.assistant)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 215, 188, 0.37),
                      borderRadius: BorderRadius.circular(5)),
                  child: SizedBox(
                    height: 200,
                    child: Container(
                        child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Text("Patient's Name :",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(3, 157, 136, 1))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.patientData['name'],
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromRGBO(3, 157, 136, 1))),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Text("Patient's Name :",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(3, 157, 136, 1))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.patientData['name'],
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromRGBO(3, 157, 136, 1))),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text("Patient's Name :",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(3, 157, 136, 1))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.patientData['name'],
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromRGBO(3, 157, 136, 1))),
                              ],
                            )),
                      ],
                    )),
                  )),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text('Check how have they been',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(3, 157, 136, 1))),
              ),
              HorView1(widget.patientData),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text('Your Drug Cabinet',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(3, 157, 136, 1))),
              ),
              HorView2()
            ],
          ),
        ),
      ),
    );
  }
}
