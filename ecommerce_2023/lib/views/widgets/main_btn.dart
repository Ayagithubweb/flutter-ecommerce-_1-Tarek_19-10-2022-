import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MainBtn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor),
        child: Text(
          text,
        ),
      ),
    );
  }
}
