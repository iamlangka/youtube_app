import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_app/src/components/custom_appbar.dart';
import 'package:youtube_app/src/components/video_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomAppBar(),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  child: VideoWidget(),
                  onTap: () {
                    Get.toNamed("/detail/239587");
                  },
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
