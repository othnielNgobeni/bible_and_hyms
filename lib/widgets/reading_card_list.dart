import 'package:bible/widgets/two_sided_rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String langType;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    this.image,
    this.title,
    this.langType,
    this.pressDetails,
    this.pressRead,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            top: 10,
            left: 5,
            right: 5,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              image,
              // 262.801061007958 200 image,
              width: 95,
            ),
          ),
          Positioned(
            top: 35,
            right: 10,
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 74,
              width: 196,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '$langType',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressDetails,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: 'read',
                          press: pressRead,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
