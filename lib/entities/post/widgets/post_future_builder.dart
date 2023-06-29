import 'package:flutter/widgets.dart';
import 'package:simple_flutter_patterns/entities/post/api/data.dart';
import 'package:simple_flutter_patterns/entities/post/models/post_result.dart';

class PostFutureBuilder extends StatefulWidget {
  const PostFutureBuilder({
    super.key,
    required this.builder,
  });

  final Widget Function(BuildContext, PostResult) builder;

  @override
  State<PostFutureBuilder> createState() => _PostFutureBuilderState();
}

class _PostFutureBuilderState extends State<PostFutureBuilder> {
  PostResult result = const PostResult.loading();

  @override
  void initState() {
    super.initState();

    fetchPost().then((post) {
      setState(() {
        result = PostResult.data(post);
      });
    }).catchError((Object err) {
      setState(() {
        result = PostResult.error(err);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, result);
  }
}
