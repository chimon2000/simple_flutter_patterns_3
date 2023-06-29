// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_flutter_patterns/entities/post/post.dart';

class PostBuilderScreen extends StatelessWidget {
  const PostBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PostFutureBuilder(
      builder: (context, result) {
        return Center(
          child: switch (result) {
            PostResultLoading() => const Text('Loading...'),
            PostResultError() => const Text("I'm sorry! Please try again."),
            PostResultData(:final post) => Text(post.title),
          },
        );
      },
    );
  }
}
