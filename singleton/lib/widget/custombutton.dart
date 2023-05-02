import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    this.backgroundColor,
    required this.content,
    super.key,
  });
  final Function() onPressed;
  final Color? backgroundColor;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.red, width: 0.7),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? Colors.white),
      ),
      child: Text(
        content,
        style: TextStyle(
          color: backgroundColor == null ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
