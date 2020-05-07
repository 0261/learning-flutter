import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_flutter/constant.dart';

class CourseWidget extends StatelessWidget {
  final String title;
  final String runningTime;
  final String imagePath;
  final Function onPlay;
  const CourseWidget(
      {Key key, this.title, this.runningTime, this.imagePath, this.onPlay})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: size.width * 0.73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              heightFactor: 1.7,
              child: SvgPicture.asset(
                imagePath,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: fmainTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        runningTime,
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: onPlay,
                    child: Container(
                      height: 65,
                      width: 65,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 45,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: fmainButtonColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            offset: Offset(0, 3),
                            color: Colors.black.withAlpha(50),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
