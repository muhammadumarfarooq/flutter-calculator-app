import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback onPress;

  const CustomButton(
      {Key? key,
      required this.title,
      this.bgColor = const Color(0xff929193),
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
