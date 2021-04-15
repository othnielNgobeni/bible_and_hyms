import 'package:bible/screens/Read.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChapterCard extends StatefulWidget {
  final String title;
  final int maxChapter;

  const ChapterCard({
    //this.maxChapter,

    Key key,
    this.maxChapter,
    this.title,
  }) : super(key: key);

  @override
  _ChapterCardState createState() => _ChapterCardState();
}

class _ChapterCardState extends State<ChapterCard> {
  int selected = 1;
  int selectedColor = 0;
  int initialNo = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      //  margin: EdgeInsets.only(bottom: 16),
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Colors.black54,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: '${widget.title}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              setState(() {
                selected = 1;
                selectedColor = 0;
              });
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 34, right: 34, top: 60, bottom: 34),
                          child: Scaffold(
                            floatingActionButton: FloatingActionButton(
                              backgroundColor: Colors.brown[300],
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Read(
                                        book: '${widget.title}',
                                        chapter: selected,
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            backgroundColor: Colors.grey[200].withOpacity(0.85),
                            appBar: AppBar(
                              title: Text('CHAPTER'),
                              backgroundColor: Colors.brown[300],
                            ),
                            body: Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: CupertinoPicker(
                                      //height
                                      useMagnifier: true,
                                      magnification: 1.3,
                                      itemExtent: 60,
                                      onSelectedItemChanged: (int index) {
                                        setState(() {
                                          selectedColor = index;
                                          selected = index + 1;
                                          initialNo = 0;
                                        });
                                      },
                                      scrollController:
                                          FixedExtentScrollController(
                                              initialItem: initialNo),
                                      children: List<Widget>.generate(
                                          widget.maxChapter, (int index) {
                                        return Center(
                                          child: Text(
                                            (++index).toString(),
                                            style: TextStyle(
                                                color:
                                                    selectedColor == index - 1
                                                        ? Colors.blue
                                                        : Colors.black),
                                          ),
                                        );
                                      })),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
