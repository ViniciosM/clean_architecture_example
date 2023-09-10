import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum QuoteStyles { regular, regularItalic, regularBold, titleBold, titleItalic }

class QuoteLabel extends StatelessWidget {
  const QuoteLabel({required this.text, required this.quoteStyle, super.key});

  final String text;
  final QuoteStyles quoteStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getTextStyle(quoteStyle),
    );
  }
}

TextStyle getTextStyle(QuoteStyles quoteStyle) {
  switch (quoteStyle) {
    case QuoteStyles.regular:
      return GoogleFonts.merriweather(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
    case QuoteStyles.regularItalic:
      return GoogleFonts.merriweather(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic);
    case QuoteStyles.regularBold:
      return GoogleFonts.acme(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      );
    case QuoteStyles.titleBold:
      return GoogleFonts.acme(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      );
    case QuoteStyles.titleItalic:
      return GoogleFonts.acme(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic);
  }
}
