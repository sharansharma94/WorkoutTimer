import 'package:flutter/material.dart';

Widget timer(String typeName) {
  return Padding(
      padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),
      child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(typeName,
                      style: TextStyle(
                          // fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                ])
              ])),
            ],
          )));
}
