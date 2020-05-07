import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CircleAvatar(
            child: Text('D'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hello,',
              style: TextStyle(
                color: Color(0xFFAAAAAA),
                fontSize: 12,
              ),
            ),
            Text(
              'Dan Kim',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            )
          ],
        )
      ],
    );
  }
}
