import 'package:dart_mappable/dart_mappable.dart';

part 'post.mapper.dart';

@MappableClass()
class Post {
  const Post(this.title);

  final String title;
}
