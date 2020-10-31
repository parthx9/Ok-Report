import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dio/dio.dart';
import 'package:ok_report/src/statspage.dart';

Dialog addPatient = Dialog(
  child: Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Add Patient Details'),
              // Form(
              //   key: _form,
              // )
            ],
          ),
        )
      ],
    ),
  ),
);

class Patient extends StatefulWidget {
  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  final doctorController = TextEditingController();
  final patientController = TextEditingController();
  var doctorId = '';
  var patientId = '';
  var patientDetails = {
    "name": "Major",
    "age": 23,
    "gender": "Male",
    "location": "Kanpur",
    "lowerBloodPressure": 80,
    "higherBloodPressure": 120,
    "pulse": 72,
    "bodyTemperature": 36.1,
    "spo2": 95,
    "pao2": 99.7
  };

  // final dio = Dio(BaseOptions(
  //     baseUrl: 'http://88a58535d3d0.ngrok.io/api/doctor/getpatient'));
  // // final _formKey = GlobalKey<FormState>;
  // @override

  // response = await dio.post('http://1a3e1467c8df.ngrok.io/api/doctor/getpatient')
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color.fromRGBO(157, 156, 181, 1)),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          height: 600,
          color: Color.fromRGBO(19, 215, 188, 0.37),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      'Enter Your Patient Data',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Doctor ID',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Patient ID',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)))),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StatsPage(patientDetails)));
                      },
                      child: Text('Add'),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
