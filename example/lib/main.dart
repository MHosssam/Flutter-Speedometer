import 'package:flutter/material.dart';
import 'package:flutter_speedometer/flutter_speedometer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Spacer(),
                  Speedometer(
                    size: 100,
                    minWidget: Text('xd'),
                    minValue: -10,
                    maxValue: 50,
                    currentValue: 30,
                    warningValue: 40,
                    backgroundColor: Colors.black,
                    meterColor: Colors.lightBlueAccent,
                    warningColor: Colors.orange,
                    kimColor: Colors.purpleAccent,
                    displayNumericStyle: TextStyle(
                      fontFamily: 'Digital-Display',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    displayWidget: Text(
                      '°C',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    displayTextStyle:
                        TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  Spacer(),
                  Speedometer(
                    size: 300,
                    minValue: 0,
                    maxValue: 180,
                    currentValue: 58,
                    warningValue: 90,
                    backgroundColor: Colors.black,
                    meterColor: Colors.green,
                    warningColor: Colors.orange,
                    kimColor: Colors.white,
                    displayNumericStyle: TextStyle(
                        fontFamily: 'Digital-Display',
                        color: Colors.white,
                        fontSize: 40),
                    displayWidget: Text(
                      'km/h',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    displayTextStyle:
                        TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Spacer(),
                  Speedometer(),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
