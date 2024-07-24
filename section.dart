import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final String content;
  final Widget? child;

  Section({required this.title, required this.content, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}

