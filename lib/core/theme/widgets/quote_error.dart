import 'package:clean_architecture_example/core/theme/consts/quotes_size.dart';
import 'package:clean_architecture_example/core/theme/widgets/quote_label.dart';
import 'package:flutter/material.dart';

class QuoteError extends StatelessWidget {
  const QuoteError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
        SizedBox(
          height: QuotesSize.y20,
        ),
        QuoteLabel(
            text: 'Desculpe! Ocorreu um erro inesperado.',
            quoteStyle: QuoteStyles.titleBold)
      ],
    );
  }
}
