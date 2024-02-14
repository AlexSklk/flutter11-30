import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autorization Screen'),
      ),
      body: Stack(
        children: <Widget> [
        Center(child: ElevatedButton(
          style: ButtonStyle(

            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                side: BorderSide(width: 3, color: Colors.black)
              )
            )
          ),
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        )),
        Align(
          alignment: const Alignment(-0.3, 0.0),
        child: Container(

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: Colors.white54),
        height: 50,
        width: 150,
        alignment: Alignment.center,
        child:  TextFormField(decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          icon: Icon(Icons.login),
          labelText: 'Login'
        ),),)

        ),
          Align(
            alignment: const Alignment(-0.3, 0.1),
              child: Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Colors.white54),
                height: 50,
                width: 150,
                alignment: Alignment.center,
                child:  TextFormField(decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.password),
                    labelText: 'Password'
                ),),)

          )
        ]


      )

    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Stack(
          children: <Widget> [
            Center(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pop(context);
              },
              child: const Text('Fun screen'),
            )),
            Align(
                alignment: const Alignment(-0.3, 0.0),
                child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      color: Colors.white54),
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  child: TextFormField(decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.accessible_forward_rounded),
                    labelText: 'Login'
                  ),),)),
            Align(alignment: const Alignment(-0.3, 0.1),
                child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      color: Colors.white54),
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  child: TextFormField(decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      icon: Icon(Icons.adb_outlined),
                      labelText: 'Password'
                  ),),))
          ]

      ),
    );
  }
}
