import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constant.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 10),
      decoration: InputDecoration(
        filled: true,
        hintText: 'Search...',
        prefixIcon: Icon(
          CupertinoIcons.search,
          color: fmainButtonColor,
          size: 22,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        contentPadding: const EdgeInsets.all(3),
      ),
    );
  }
}
