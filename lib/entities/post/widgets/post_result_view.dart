import 'package:flutter/material.dart';
import 'package:simple_flutter_patterns/entities/post/api/post.dart';

class PostLoadingView extends StatelessWidget {
  const PostLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Loading...');
  }
}

class PostErrorView extends StatelessWidget {
  const PostErrorView(
    this.error, {
    super.key,
  });

  final Object error;

  @override
  Widget build(BuildContext context) {
    return const Text("I'm sorry! Please try again.");
  }
}

class PostDataView extends StatelessWidget {
  const PostDataView({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(post.title),
    );
  }
}
