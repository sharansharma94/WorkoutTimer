import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:numberpicker/numberpicker.dart';

import './timers.dart' as tt;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Start Your Workout')
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Just',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Workout',
                    style: TextStyle(color: Colors.white, fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Container(
            height: MediaQuery.of(context).size.height - 115.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        Text('Sets'),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              labelText: "Sets",
                              // hintText: "whatever you want",
                              // icon: Icon(Icons.phone_iphone)
                            )),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('Work'),
                                Row(
                                  children: <Widget>[
                                    new NumberPicker.integer(
                                        initialValue: _currentValue,
                                        minValue: 0,
                                        maxValue: 10,
                                        onChanged: (newValue) => setState(
                                            () => _currentValue = newValue)),
                                    // new Text("Current number: $_currentValue"),
                                    new NumberPicker.integer(
                                        initialValue: _currentValue,
                                        minValue: 0,
                                        maxValue: 10,
                                        onChanged: (newValue) => setState(
                                            () => _currentValue = newValue)),
                                    // new Text("Current number: $_currentValue"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('Interval'),
                                Row(
                                  children: <Widget>[
                                    new NumberPicker.integer(
                                        initialValue: _currentValue,
                                        minValue: 0,
                                        maxValue: 10,
                                        onChanged: (newValue) => setState(
                                            () => _currentValue = newValue)),
                                    // new Text("Current number: $_currentValue"),
                                    new NumberPicker.integer(
                                        initialValue: _currentValue,
                                        minValue: 0,
                                        maxValue: 10,
                                        onChanged: (newValue) => setState(
                                            () => _currentValue = newValue)),
                                    // new Text("Current number: $_currentValue"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
