import 'package:simple_flutter_patterns/entities/post/api/post.dart';

sealed class PostResult {
  const factory PostResult.data(Post post) = PostResultData;
  const factory PostResult.loading() = PostResultLoading;
  const factory PostResult.error(Object error) = PostResultError;
}

class PostResultData implements PostResult {
  const PostResultData(this.post);

  final Post post;
}

class PostResultLoading implements PostResult {
  const PostResultLoading();
}

class PostResultError implements PostResult {
  const PostResultError(this.error);

  final Object error;
}
