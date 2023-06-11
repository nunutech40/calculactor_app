import 'package:flutter/material.dart';

class CalculactorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foreGroundColor;
  final String text;
  IconData? icon;
  final Function() onTap;

  CalculactorButton(
      {Key? key,
      required this.backgroundColor,
      required this.foreGroundColor,
      required this.text,
      required this.onTap})
      : super(key: key);

  CalculactorButton.Icon(
      {required this.backgroundColor,
      required this.foreGroundColor,
      required this.text,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: foreGroundColor),
                )
              : Icon(
                  icon,
                  color: foreGroundColor,
                ),
        ),
      ),
    );
  }
}
