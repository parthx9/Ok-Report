import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HorView2 extends StatelessWidget {
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
              width: 300,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FlutterIcons.prescription_bottle_faw5s,
                      size: 120,
                      // color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Text('Medicine Name',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                        Text('25 tablets',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                        SizedBox(
                          width: 150,
                          child: Text(
                              'Aliquyam erat tempor lorem amet ipsum voluptua ut et, invidunt kasd stet tempor ut takimata sadipscing erat invidunt gubergren. ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(7, 184, 159, 0.84))),
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(
            width: 10,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(19, 215, 188, 0.37)),
              height: 150,
              width: 300,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FlutterIcons.prescription_bottle_faw5s,
                      size: 120,
                      // color: Color.fromRGBO(240, 111, 18, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Text('Medicine Name',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                        Text('25 tablets',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                        SizedBox(
                          width: 150,
                          child: Text(
                              'Aliquyam erat tempor lorem amet ipsum voluptua ut et, invidunt kasd stet tempor ut takimata sadipscing erat invidunt gubergren. ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(7, 184, 159, 0.84))),
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
