import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_flutter/constant.dart';
import 'package:learning_flutter/screens/CourseScreen.dart';

class CourseCardWidget extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String course;

  const CourseCardWidget(
      {Key key, this.title, this.author, this.imagePath, this.course})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      height: size.height * 0.3,
      margin: const EdgeInsets.only(right: 31),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: fsubBackgroundColor,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseScreen(
                course: course,
              ),
            ),
          );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Text(
                  author,
                  style: TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontWeight: FontWeight.w600,
                    fontSize: 8,
                  ),
                ),
                SvgPicture.asset(
                  imagePath,
                  width: size.width * 0.5,
                  height: size.height * 0.21,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
