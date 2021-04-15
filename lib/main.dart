import 'package:bible/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/rounded_button.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIBLE APP',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          /*image: DecorationImage(
            image: AssetImage('assets/Bitmap.png'),
            fit: BoxFit.fill,
          ),*/
          gradient: RadialGradient(
            colors: [
              //Colors.black87,
              Colors.brown[100],
              Colors.brown[300],

              //Colors.deepOrange[400],
              //Colors.amber[100],
              //Colors.orangeAccent
            ],
            radius: 0.9,
            stops: [0.4, 0.9],
            //begin: Alignment.bottomLeft,
            //end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'BIBLES & HYMNS',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold,
                fontSize: 38.0,
                letterSpacing: 1.5,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              text: 'Start reading',
              fontSize: 20,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Homescreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
