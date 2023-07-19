// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repository/video_post_repositiry_imp.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepositoryImp videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    // Repository, DataSource
    // final List<VideoPost> newVideos = videoPosts
    //     .map(
    //       (e) => LocalVideoModel.fromJson(e).toVideoPostEntity(),
    //     )
    //     .toList();

    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);

    print('loadNextPage: ${videos.length}');

    initialLoading = false;

    notifyListeners();
  }
}
