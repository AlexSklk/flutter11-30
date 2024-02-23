import 'package:flutter/material.dart';

final List<String> id = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
final List<int> colorCodes = <int> [1000, 900, 800, 700, 600, 500, 400, 300, 200, 100];
final List<String> photo = <String> [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy0nYtkA3nei-LeDySclnMEF5kOqmHO6LkSA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP7E-HTkzyi9Ct3WYocBqgi2GhAtlQEZvQww&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-eEqhPjhgJXamTePRQGr6Z_vv2_gSQsMoaw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLu-R3QucnaSavkO2acotc_bOXSUYgYl7R7w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYs8LCUwckz76zEOlPrEyy-X2BNo9z7boPXw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4-tgL2Z76AUpk6s3u7TzQoSrtv_ZmPjRmlg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHFYHUkPDe3L7WyqyfhEkzR937isBIkq0uTXYADtxKOmrJN_1bYe1Wo1RhqiHw92xovg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3BGxtypnMy8MpGYCcnLs-5pp_QTPuroQOotpGlq-9nxavVvj1-6heDl72PxtIxWOjXws&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyeebfZeznz7UmYCaJguohIHKYJh7A5Xq3CQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl0k9FM_GvRc4qQgVZYBXSTfDFZ_y6pWnSjg&usqp=CAU"];
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

        '/third': (context) => const ThirdScreen(),
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
          title: const Text('Registration Screen'),
        ),
        body: Stack(
            children: <Widget> [
              Align(
                alignment: Alignment(0.6, 0.0),
                  child: ElevatedButton(
                style: ButtonStyle(

                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                            side: const BorderSide(width: 3, color: Colors.black)
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
                  alignment: const Alignment(-0.9, 0.0),
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
                  alignment: const Alignment(-0.9, 0.2),
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
        title: const Text('Authorization Screen'),
      ),
      body: Stack(
          children: <Widget> [
            Align(
              alignment: Alignment(0.6,0.0),
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
              ),
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                //Navigator.pop(context);
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Fun screen'),
            )),
            Align(
                alignment: const Alignment(-0.9, 0.0),
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
            Align(alignment: const Alignment(-0.9, 0.2),
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

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: id.length,
          itemBuilder: (BuildContext context, int index){
            double screenWidth = MediaQuery.of(context).size.width;
            double screenHeight = MediaQuery.of(context).size.height;
            return Container(
                width: screenWidth * 0.7,
                height: screenHeight * 0.7,
                color: Colors.lightGreen[colorCodes[index]],
                child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.network(photo[index]),
                      ),
                      const Align(
                        alignment: Alignment(0.0,0.5),
                        child: Text('Example'),
                      )
                    ]
                )


            );

          }
      ),
    );

  }
}
