import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({required this.content, super.key});

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.all(50),
        child: content,
      ),
    );
  }
}
