import 'package:e_learing_project/utils/colors.dart';
import 'package:e_learing_project/widgets/custom_widget_button.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../widgets/custom_app_bar.dart';

class CourseDeletisScreen extends StatefulWidget {
  final String courseName;
  const CourseDeletisScreen({super.key, required this.courseName});

  @override
  State<CourseDeletisScreen> createState() => _CourseDeletisScreenState();
}

class _CourseDeletisScreenState extends State<CourseDeletisScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customAppBar(context: context, title: widget.courseName),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * .25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 5,
                        spreadRadius: .5)
                  ]),
              child: Center(child: Icon(Icons.play_circle_fill_rounded)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Career With Flutter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  'Created By',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Dream Coder',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.PriamyColor,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star_outline),
                    Text('4.3'),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.timer_outlined),
                    Text('72 Hours'),
                  ],
                ),
                Text(
                  '\$50',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.PriamyColor),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
          TextButton(
            child: Text(
              'Encrol_Now',
              style: TextStyle(fontSize: 25),
            ),
            onPressed: () {
                Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                elevation: 3,
                backgroundColor:Colors.deepPurpleAccent),
          ),
        ],
      ),
    );
  }
}
