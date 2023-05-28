import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple[700],
      //   title: Text(''),
      // ),
      body: Container(
        // color: Colors.deepPurple[700],
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/quiz-logo.png',
                    width: 300,
                    color: Color.fromARGB(150, 255, 255, 255),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Learn Flutter the fun way!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton.icon(
                      onPressed: () {
                        
                      },
                      label: const Text('Start Quiz'),
                      icon: Icon(Icons.arrow_right_alt),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white)),
                ]),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
