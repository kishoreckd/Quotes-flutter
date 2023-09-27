// ignore_for_file: public_member_api_docs, sort_constructors_first

class Quote {
  String text;
  String author;

  Quote({
    required this.text,
    required this.author,
  });
}

Quote myquote = Quote(author: 'Oscar wilde', text: 'Nobody dies');
