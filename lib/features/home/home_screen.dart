import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_flutter_patterns/app/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.go(AppRoute.vanilla.path);
          },
          child: const Text('Vanilla'),
        ),
        TextButton(
          onPressed: () {
            context.go(AppRoute.containerView.path);
          },
          child: const Text('Container/View'),
        ),
        TextButton(
          onPressed: () {
            context.go(AppRoute.containerViewBranch.path);
          },
          child: const Text('Container/View/Branch'),
        ),
        TextButton(
          onPressed: () {
            context.go(AppRoute.builder.path);
          },
          child: const Text('Builder'),
        ),
        TextButton(
          onPressed: () {
            context.go(AppRoute.builderBranch.path);
          },
          child: const Text('Builder/Branch'),
        ),
      ],
    );
  }
}
