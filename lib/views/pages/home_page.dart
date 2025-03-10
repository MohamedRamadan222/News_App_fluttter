import 'package:again_one/views/widgets/app_bar_icons.dart';
import 'package:again_one/views/widgets/custom_carousel_slider.dart';
import 'package:again_one/views/widgets/home_title_widget.dart';
import 'package:again_one/views/widgets/recommendation_item.dart';
import 'package:flutter/material.dart';

import '../../models/news_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppBarIcons(icon: Icons.menu),
                    Row(
                      children: const [
                        AppBarIcons(icon: Icons.search),
                        SizedBox(width: 6.0),
                        AppBarIcons(icon: Icons.notifications),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const HomeTitleWidget(title: 'Breaking News'),
                const SizedBox(height: 8.0),
                const CustomCarouselSlider(),
                const SizedBox(height: 16.0),
                const HomeTitleWidget(title: 'Recommendation'),
                const SizedBox(height: 8.0),
                ...news.map(
                  (newsItem) => Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: RecommendationItem(newsItem: newsItem),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
