import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewTweetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(
                14.0,
                2.0,
                14.0,
                2.0,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  18.0,
                ),
              ),
              child: Text(
                'Tweetar',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.close),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: TextField(
                    autocorrect: false,
                    autofocus: true,
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'O que está acontecendo?',
                      hintStyle: TextStyle(
                        color: Colors.white24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 0.0,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: Colors.white10,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.images,
                        size: 22.0,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        FontAwesomeIcons.poll,
                        size: 22.0,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        FontAwesomeIcons.mapPin,
                        size: 22.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  Icon(
                    FontAwesomeIcons.plusCircle,
                    size: 22.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
