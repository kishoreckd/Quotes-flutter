import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    super.key,
    required this.quotes,
    required this.delete,
  });

  final Quote quotes;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(
                height: 10.0,
              ),
              // FloatingActionButton(onPressed: delete)
              TextButton.icon(
                onPressed: delete,
                label: const Text('delete'),
                icon: const Icon(Icons.delete),
              )
            ],
          ),
        ));
  }
}
