import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'The truth is rarely pure and never simple.', author: 'Wilde'),
    Quote(
        text: 'The Hardest Hoice Requires the Strongest Will.',
        author: 'oscar'),
    Quote(text: 'We won Sir..', author: 'oscar Issac'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList(),
      ),
    );
  }
}
