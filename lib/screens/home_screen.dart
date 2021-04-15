//import 'package:bible/widgets/rounded_button.dart';
import 'package:bible/screens/Tsonga_Bible.dart';
import 'package:bible/widgets/reading_card_list.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60.0, left: 20.0, right: 20.0, bottom: 10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: 'What are you reading\n '),
                          TextSpan(
                            text: 'today?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)),
                  /* image: DecorationImage(
                    image: AssetImage('assets/main_page_bg.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),*/
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /*Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: 'Which bible are you \nreading '),
                            TextSpan(
                              text: 'today?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),*/
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'BIBLES',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          ReadingListCard(
                            image: 'assets/bible 5.jpeg',
                            title: 'Mahungu Lamanene',
                            langType: 'Tsonga Bible',
                            pressRead: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ReadScreen();
                                }),
                              );
                            },
                          ),
                          ReadingListCard(
                            image: 'assets/bible 4.png',
                            title: 'King James',
                            langType: 'English Bible',
                          ),
                          ReadingListCard(
                            image: 'assets/bible 6.png',
                            title: 'King James',
                            langType: 'Venda Bible',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'HYMS',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          ReadingListCard(
                            image: 'assets/book2.jpg',
                            title: 'Mahungu Lamanene',
                            langType: 'Tsonga Bible',
                          ),
                          ReadingListCard(
                            image: 'assets/Phymn.png',
                            title: 'King James',
                            langType: 'English Bible',
                          ),
                          ReadingListCard(
                            image: 'assets/bible 6.png',
                            title: 'King James',
                            langType: 'Venda Bible',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
