import 'package:flutter/material.dart';
import 'package:youtubeclone/data.dart';

import '../widgets/custome_sliver_app_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverCustomeAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final video = videos[index];
              return VideoCard(
                video: video,
              );
            }, childCount: videos.length),
          ),

        ],
      ),
    );
  }
}
