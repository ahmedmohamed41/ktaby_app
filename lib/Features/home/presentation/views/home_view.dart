import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool shimmer = false;
  Future<void> _refresh() {
    setState(() {
      shimmer = true;
    });
    return Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        shimmer = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: shimmer
            ? Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.transparent,
                child: const HomeViewBody(),
              )
            : const HomeViewBody(),
      ),
    );
  }
}
