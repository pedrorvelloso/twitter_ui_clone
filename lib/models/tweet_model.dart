import 'package:twitter_clone/models/user_model.dart';

class Tweet {
  User author;
  String tweet;
  int likes;
  int comments;
  int retweets;

  Tweet({
    this.author,
    this.tweet,
    this.likes,
    this.comments,
    this.retweets,
  });
}

User author1 = User(
    avatar:
        'https://avatars3.githubusercontent.com/u/20671359?s=460&u=262d1c9e6ca021b60a84ab98f1a9d3e0d86ea4ef&v=4',
    name: 'ilheru',
    username: 'ilher');

User author2 = User(
    avatar:
        'https://pbs.twimg.com/profile_images/1119277991056556032/aWM4WxkD_400x400.jpg',
    name: 'sailor seaweed',
    username: 'mahzisoares');

User author3 = User(
    avatar:
        'https://pbs.twimg.com/profile_images/893840342558101504/-ErkwFar_400x400.jpg',
    name: 'Diogo Martins',
    username: 'Di_romm');

User author4 = User(
    avatar:
        'https://pbs.twimg.com/profile_images/893840342558101504/-ErkwFar_400x400.jpg',
    name: 'Andrey Mazépas',
    username: 'andreymazepas');

List<Tweet> tweets = [
  Tweet(
    author: author1,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author2,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author2,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author4,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author1,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author3,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author3,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
  Tweet(
    author: author4,
    tweet:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non congue turpis, ac auctor tortor. Phasellus eu ultricies nunc, quis imperdiet libero. Donec varius sapien.',
    comments: 0,
    likes: 12,
    retweets: 15,
  ),
];
