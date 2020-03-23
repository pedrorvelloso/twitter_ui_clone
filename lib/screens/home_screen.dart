import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/widgets/tweet_display_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Icon(
            FontAwesomeIcons.twitter,
            color: Theme.of(context).primaryColor,
            size: 28.0,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.all(8.0),
            onPressed: () => print('Search'),
            icon: Icon(
              Icons.star_border,
            ),
            color: Colors.white,
          ),
        ],
        leading: GestureDetector(
          onTap: () => print('avatar'),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars3.githubusercontent.com/u/20671359?s=460&u=262d1c9e6ca021b60a84ab98f1a9d3e0d86ea4ef&v=4',
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Theme.of(context).accentColor,
            height: 0.5,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: (BuildContext context, int index) {
            Tweet tweet = tweets[index];
            return Container(
              child: TweetDisplay(
                tweet: tweet,
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        iconSize: 20.0,
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bell,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.envelope,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
