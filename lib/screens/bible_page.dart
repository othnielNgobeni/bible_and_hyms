import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int Verse;
    return MaterialApp(
      title: 'Genesa',
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 0.0)],
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 68),
                          Center(
                              child: Text(
                            'Select a verse to read',
                            style: Theme.of(context).textTheme.display1,
                            textScaleFactor: 0.9,
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 1000,
                      color: Colors.black38,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                  child: GridView.count(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 7,
                    children: List.generate(50, (index) {
                      Verse = getIndex(index);
                      return GridTile(
                        child: GestureDetector(
                          child: Card(
                            shadowColor: Colors.black,
                            color: Colors.white,
                            child: Center(
                              //Verse = getIndex(index),
                              child: Text('$Verse'),
                            ),
                          ),
                          onTap: () {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                child: CupertinoAlertDialog(
                                  title: Column(
                                    children: <Widget>[
                                      Text('test'),
                                      Icon(Icons.favorite)
                                    ],
                                  ),
                                ));
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

int getIndex(int index) {
  return ++index;
}
