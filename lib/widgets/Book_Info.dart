import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;

  const BookInfo({
    this.image,
    this.title1,
    this.title2,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title1',
                style: Theme.of(context).textTheme.display1,
                textScaleFactor: 0.9,
              ),
              Text(
                '$title2',
                style: Theme.of(context).textTheme.display1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textScaleFactor: 0.9,
              ),
            ],
          ),
        ),
        Image.asset(
          '$image',
          height: 180,
        )
      ],
    );
  }
}
