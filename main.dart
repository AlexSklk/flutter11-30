import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    child: Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[

          Expanded(
            child: Container(color: Colors.yellow,




      ),
            flex: 4,
        ),
        Expanded(child: Container(color: Colors.pink),
          flex: 1,
        ),
        Expanded(child: Container(color: Colors.indigoAccent,),
          flex: 1,
        ),
        Expanded(child: Container(color: Colors.green,),
          flex: 4,
        ),
        Expanded(child: Container(color: Colors.black,),
          flex: 4,
        ),
        Expanded(child: Container(color: Colors.deepOrange,),
          flex: 1,
        ),
        Expanded(child: Container(color: Colors.limeAccent,),
          flex: 1,
        ),
        Expanded(child: Container(color: Colors.red,),
          flex: 4,
        ),
      ],
    ),



  ));
}