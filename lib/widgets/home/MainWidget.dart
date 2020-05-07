import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_flutter/constant.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.25,
          decoration: BoxDecoration(
            color: fsubBackgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
            child: Text(
              '오늘은 어떤걸 \n배우고 싶으세요 ?',
              style: TextStyle(
                  color: fmainTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            // top: size.height * -0.3,
            left: size.width * 0.05,
            bottom: size.height * 0.14),
        Positioned(
          child: SvgPicture.asset('assets/icons/guy.svg'),
          left: size.width * 0.35,
          top: size.height * 0.01,
        ),
        Positioned(
          left: size.width * 0.047,
          top: size.height * 0.14,
          child: FlatButton(
            onPressed: () {},
            color: fmainButtonColor,
            textColor: Colors.white,
            child: Text('시작하기'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
