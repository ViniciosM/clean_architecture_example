import 'package:flutter/material.dart';

class QuoteLoader extends StatelessWidget {
  const QuoteLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.black,
      ),
    );
  }
}
