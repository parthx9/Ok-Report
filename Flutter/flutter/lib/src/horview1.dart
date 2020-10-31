import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HorView1 extends StatelessWidget {
  var patientData;
  HorView1(this.patientData);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesome5.heart,
                      color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Heart Rate',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(3, 157, 136, 1))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          patientData['pulse'].toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(1, 112, 104, 1)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'bpm',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(1, 112, 104, 1)),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 10),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FlutterIcons.home_thermometer_outline_mco,
                      color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Body Temp',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(3, 157, 136, 1))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          patientData['bodyTemperature'].toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(1, 112, 104, 1)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'C',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(1, 112, 104, 1)),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 10),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FlutterIcons.air_purifier_mco,
                      color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Oxygen Level',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(3, 157, 136, 1))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          patientData['spo2'].toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(1, 112, 104, 1)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '%',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(1, 112, 104, 1)),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 10),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FlutterIcons.mask_faw5s,
                      color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('PAO2',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(3, 157, 136, 1))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          patientData['pao2'].toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(1, 112, 104, 1)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '%',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(1, 112, 104, 1)),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 10),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesome5.heart,
                      color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Lower B.P',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(3, 157, 136, 1))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          patientData['lowerBloodPressure'].toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(1, 112, 104, 1)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(1, 112, 104, 1)),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 10),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesome5.heart,
                      color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Higher B.P',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(3, 157, 136, 1))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          patientData['higherBloodPressure'].toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(1, 112, 104, 1)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(1, 112, 104, 1)),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
