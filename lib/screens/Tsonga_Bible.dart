import 'package:bible/widgets/Book_Info.dart';
import 'package:bible/widgets/Chapter_Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadScreen extends StatefulWidget {
  @override
  _ReadScreenState createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  double total = 1;
  FixedExtentScrollController firstController;
  FixedExtentScrollController secondController;
  int selected = 0;
  String book = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 9),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 68),
                            BookInfo(
                              image: 'assets/bible 4.png',
                              title1: 'Mahungu',
                              title2: 'Lamanene',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Genesa',
                      maxChapter: 54,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Eksoda',
                      maxChapter: 53,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Levhitika',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Tinhlayo',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Duteronoma',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Yoxuwa',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Vaavanyisi',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'Rhuti',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'I Samiele',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChapterCard(
                      title: 'II Samiele',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
