import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
//import 'package:url_launcher/url_launcher.dart';

class Read extends StatefulWidget {
  final String book;
  final int chapter;
  const Read({
    Key key,
    this.book,
    this.chapter,
  }) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<Read> {
  List<String> title = List();
  List<String> link = List();
  List<String> post = List();
  String BibleLines;

  void _getDataFromWeb() async {
    final response =
        await http.get('https://www.bible.com/bible/184/GEN.1.TSO89');
    dom.Document document = parser.parse(response.body);
    final elements = document.getElementsByClassName('yv-bible-text ');
    final elements2 = document.querySelector(".content , .label , .heading");
    //final elements2 = document.querySelector(".content , .label , .heading");

    //final content = document.getElementsByTagName('reader');
    setState(() {
      title = elements
          .map((element) => element.getElementsByTagName("h1")[0].innerHtml)
          .toList();
      post = elements
          .map((element) => element
              .querySelectorAll(".content , .label , .heading")
              .toString())
          .toList();
    });
  }

  @override
  // ignore: must_call_super
  void initState() {
    _getDataFromWeb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[200],
      ),
      body: title.length == 0 || post.length == 0
          ? Text('No data')
          : ListView.builder(
              itemCount: post.length,
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                    child: FadeInAnimation(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    title[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  post[index],
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 15),
                                /* Text(
                                  link[0],
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                  ),
                                ),*/
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
