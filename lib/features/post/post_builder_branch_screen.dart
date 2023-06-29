// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_flutter_patterns/entities/post/post.dart';

class PostBuilderBranchScreen extends StatelessWidget {
  const PostBuilderBranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PostFutureBuilder(
      builder: (context, result) {
        return Center(
          child: switch (result) {
            PostResultLoading() => const PostLoadingView(),
            PostResultError(:final error) => PostErrorView(error),
            PostResultData(:final post) => PostDataView(post: post),
          },
        );
      },
    );
  }
}
