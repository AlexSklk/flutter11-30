import 'package:flutter/material.dart';
final List<String> id = <String>['1', '2', '3'];
final List<int> colorCodes = <int> [600, 400, 200];
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Stack(
          children: <Widget>[
            ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: id.length,
              itemBuilder: (BuildContext context, int index) {
                double screenWidth = MediaQuery.of(context).size.width;
                double screenHeight = MediaQuery.of(context).size.height;
                return Container(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.7,
                  color: Colors.deepPurple[colorCodes[index]],

                  child: Stack(
                    children: [

                      Image.network("data:image/jpeg;base64,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"),
                      const Align(
                        alignment: Alignment(0.0, 0.5),
                          child: const Text('Example'))
                    ],
                  )

                );
              },
            )

          ]

      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Page'),
      ),
    ),

  )
  );

}
