import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constant.dart';
import 'package:learning_flutter/widgets/common/SearchWidget.dart';
import 'package:learning_flutter/widgets/home/CourseCardWidget.dart';
import 'package:learning_flutter/widgets/home/HomeBottomButtonWidget.dart';
import 'package:learning_flutter/widgets/home/MainWidget.dart';
import 'package:learning_flutter/widgets/user/UserProfileWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 14),
                    child: UserProfileWidget()),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 27),
                  child: SearchWidget(),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 52),
                  child: MainWidget(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('인기있는 강좌',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.symmetric(
              vertical: 14,
            ),
            height: size.height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CourseCardWidget(
                  title: 'Flutter 기본',
                  author: 'Dan kim',
                  imagePath: 'assets/icons/guy.svg',
                  course: 'A',
                ),
                CourseCardWidget(
                  title: 'Flutter 상태 관리',
                  author: 'Dan kim',
                  imagePath: 'assets/icons/guy.svg',
                  course: 'B',
                ),
                CourseCardWidget(
                  title: 'Flutter 심화',
                  author: 'Dan kim',
                  imagePath: 'assets/icons/guy.svg',
                  course: 'C',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            height: size.height * 0.06,
            width: size.width * 0.65,
            decoration: BoxDecoration(
              color: fmainButtonColor,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                HomeBottomButtonWidget(
                  icon: Icons.home,
                  isActive: true,
                  onTap: () {},
                ),
                HomeBottomButtonWidget(
                  icon: Icons.equalizer,
                  isActive: false,
                  onTap: () {},
                ),
                HomeBottomButtonWidget(
                  icon: Icons.class_,
                  isActive: false,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
