import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    padding: EdgeInsets.all(16),
    color: Colors.white,
    child: Row(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(color: Colors.pink),
                flex: 4,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: Colors.blue),
                flex: 1,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: Colors.red),
                flex: 1,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: Colors.greenAccent),
                flex: 4,
              ),

            ],
          ),
          flex: 1,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(color: Colors.lightBlue),
                flex: 4,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: Colors.grey),
                flex: 1,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: Colors.black),
                flex: 1,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: Colors.orange),
                flex: 4,
              ),
            ],
          ),
          flex: 1,
        ),
      ],
    ),
  ),
  );
}
