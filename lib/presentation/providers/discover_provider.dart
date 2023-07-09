// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];
  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    // Repository, DataSource
    final List<VideoPost> newVideos = videoPosts
        .map(
          (e) => LocalVideoModel.fromJson(e).toVideoPostEntity(),
        )
        .toList();

    videos.addAll(newVideos);

    print('loadNextPage: ${videos.length}');

    initialLoading = false;

    notifyListeners();
  }
}
