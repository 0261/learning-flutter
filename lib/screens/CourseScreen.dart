import 'package:flutter/material.dart';
import 'package:learning_flutter/constant.dart';
import 'package:learning_flutter/widgets/course/CourseWidget.dart';

class CourseScreen extends StatelessWidget {
  final String course;
  const CourseScreen({Key key, this.course}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: fmainButtonColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'CHAPTER 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Text(
                      'Flutter 기본',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.07),
                Container(
                  height: size.height * 0.55,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CourseWidget(
                        imagePath: 'assets/icons/guy.svg',
                        title: '플러터 기본',
                        runningTime: '18 mins',
                        onPlay: () {
                          Navigator.pop(context);
                        },
                      ),
                      CourseWidget(
                        imagePath: 'assets/icons/guy.svg',
                        title: '플러터 레이아웃',
                        runningTime: '22 mins',
                        onPlay: () {
                          Navigator.pop(context);
                        },
                      ),
                      CourseWidget(
                        imagePath: 'assets/icons/guy.svg',
                        title: '플러터 실전',
                        runningTime: '15 mins',
                        onPlay: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.15,
                  child: Divider(
                    color: Colors.white.withAlpha(50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
