// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_flutter_patterns/entities/post/post.dart';

class PostContainerViewBranchScreen extends StatefulWidget {
  const PostContainerViewBranchScreen({super.key});

  @override
  State<PostContainerViewBranchScreen> createState() =>
      _PostContainerViewBranchScreenState();
}

class _PostContainerViewBranchScreenState
    extends State<PostContainerViewBranchScreen> {
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
    return PostView(result: result);
  }
}

class PostView extends StatelessWidget {
  const PostView({
    super.key,
    required this.result,
  });

  final PostResult result;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: switch (result) {
        PostResultLoading() => const PostLoadingView(),
        PostResultError(:final error) => PostErrorView(error),
        PostResultData(:final post) => PostDataView(post: post),
      },
    );
  }
}
