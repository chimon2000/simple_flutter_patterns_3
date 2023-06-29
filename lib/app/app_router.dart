import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_flutter_patterns/features/home/home_screen.dart';
import 'package:simple_flutter_patterns/features/post/post_builder_branch_screen.dart';
import 'package:simple_flutter_patterns/features/post/post_builder_screen.dart';
import 'package:simple_flutter_patterns/features/post/post_container_view_branch_screen.dart';
import 'package:simple_flutter_patterns/features/post/post_container_view_screen.dart';
import 'package:simple_flutter_patterns/features/post/post_vanilla_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    ShellRoute(
      builder: (context, state, child) => Scaffold(
        body: child,
      ),
      routes: [
        GoRoute(
          path: AppRoute.vanilla.path,
          builder: (context, state) {
            return const PostVanillaScreen();
          },
        ),
        GoRoute(
          path: AppRoute.builder.path,
          builder: (context, state) {
            return const PostBuilderScreen();
          },
        ),
        GoRoute(
          path: AppRoute.builderBranch.path,
          builder: (context, state) {
            return const PostBuilderBranchScreen();
          },
        ),
        GoRoute(
          path: AppRoute.containerView.path,
          builder: (context, state) {
            return const PostContainerViewScreen();
          },
        ),
        GoRoute(
          path: AppRoute.containerViewBranch.path,
          builder: (context, state) {
            return const PostContainerViewBranchScreen();
          },
        ),
      ],
    ),
  ],
);

enum AppRoute {
  vanilla('/vanilla'),
  containerView('/container-view'),
  containerViewBranch('/container-view-branch'),
  builder('/builder'),
  builderBranch('/builder-branch');

  const AppRoute(this.path);

  final String path;
}
