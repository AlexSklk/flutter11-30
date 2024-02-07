import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange),
                  height: 100,
                  width: 150,
                  alignment: Alignment.center,
                  child: const Text(
                    'Example 1',
                    textDirection: TextDirection.ltr,
                  ),
                  ),

                ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber),
                height: 100,
                width: 150,
                alignment: Alignment.center,
                child: const Text(
                  'Example 2',
                  textDirection: TextDirection.ltr,
              ),
                ),
              ),
            Align(
              alignment: const Alignment(0.0, 0.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent),
                height: 100,
                width: 150,
                alignment: Alignment.center,
                child: const Text(
                  'Example 3',
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, -0.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.limeAccent),
                height: 100,
                width: 150,
                alignment: Alignment.center,
                child: const Text(
                  'Example 4',
                  textDirection: TextDirection.ltr,
                ),
                ),
              ),



          ]

          ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Flutter = FUN'),
        ),
        ),

        )
    );

}