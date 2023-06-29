// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_flutter_patterns/entities/post/post.dart';

class PostVanillaScreen extends StatefulWidget {
  const PostVanillaScreen({super.key});

  @override
  State<PostVanillaScreen> createState() => _PostVanillaScreenState();
}

class _PostVanillaScreenState extends State<PostVanillaScreen> {
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
    return Center(
      child: switch (result) {
        PostResultLoading() => const Text('Loading...'),
        PostResultError() => const Text("I'm sorry! Please try again."),
        PostResultData(:final post) => Text(post.title),
      },
    );
  }
}
