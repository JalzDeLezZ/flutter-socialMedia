import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImp implements VideoPostRepository {
  final VideoPostDatasource innVideoPostDatasource;

  VideoPostRepositoryImp({required this.innVideoPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return innVideoPostDatasource.getTrendingVideosByPage(page);
  }
}
