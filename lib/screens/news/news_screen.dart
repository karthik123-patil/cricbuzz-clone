import 'package:cricbuzz/screens/matches/live_cricket_matches.dart';
import 'package:cricbuzz/screens/matches/recent_matches.dart';
import 'package:cricbuzz/screens/matches/upcoming_matches.dart';
import 'package:cricbuzz/screens/news/categories_screen.dart';
import 'package:cricbuzz/screens/news/cricbuzz_plus_stories_scren.dart';
import 'package:cricbuzz/screens/news/component/news_appbar.dart';
import 'package:cricbuzz/screens/news/topics_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/box_decoration.dart';
import 'all_stories_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: const NewsAppBar(),
        body: SafeArea(
          child: Container(
              decoration: AppWidgets.backgroundDecoration(context),
              child: const TabBarView(
                children: [
                  AllStoriesScreen(),
                  CricBuzzPlusStories(),
                  CategoriesScreen(),
                  TopicsScreen(),
                ],
              )),
        ),
      ),
    );
  }
}
