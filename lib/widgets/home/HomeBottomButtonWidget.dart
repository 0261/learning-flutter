import 'package:flutter/material.dart';

class HomeBottomButtonWidget extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Function onTap;
  const HomeBottomButtonWidget({
    Key key,
    this.icon,
    this.isActive = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _activeColor = Colors.white;
    Color _inActiveColor = Color.fromARGB(50, 255, 255, 255);
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        color: isActive ? _activeColor : _inActiveColor,
        size: 24,
      ),
    );
  }
}
