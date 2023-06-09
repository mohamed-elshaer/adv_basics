import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: Color.fromARGB(150, 255, 255, 255),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Learn Flutter the fun way!',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                  onPressed: () {
                    startQuiz();
                  },
                  label: const Text('Start Quiz'),
                  icon: Icon(Icons.arrow_right_alt),
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white)),
            ]),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
