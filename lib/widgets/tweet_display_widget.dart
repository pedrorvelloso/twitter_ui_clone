import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/models/tweet_model.dart';

class TweetDisplay extends StatelessWidget {
  final Tweet tweet;

  TweetDisplay({this.tweet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(tweet.author.avatar),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(tweet.author.name),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              '@${tweet.author.username}',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 3.0,
                        ),
                        child: Text(tweet.tweet),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.comment,
                            color: Colors.white24,
                            size: 14.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '${tweet.comments}',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white24,
                            ),
                          ),
                          SizedBox(
                            width: 38.0,
                          ),
                          Icon(
                            FontAwesomeIcons.retweet,
                            color: Colors.white24,
                            size: 14.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '${tweet.retweets}',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white24,
                            ),
                          ),
                          SizedBox(
                            width: 38.0,
                          ),
                          Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.white24,
                            size: 14.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '${tweet.likes}',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white24,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        PreferredSize(
          child: Container(
            color: Colors.white10,
            height: 0.5,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ],
    );
  }
}
