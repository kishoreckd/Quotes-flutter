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

  Widget quoteTemplate(Quote quotes) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quotes.text,
                style: const TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                quotes.author,
                style: const TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ],
          ),
        ));
  }

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
        children: quotes.map((e) => quoteTemplate(e)).toList(),
// listcomprehension
        // children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList(),
      ),
    );
  }
}
