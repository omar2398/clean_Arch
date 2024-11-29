import 'package:equatable/equatable.dart';

class quoteClass extends Equatable {
  final String quote;
  final String author;
  final String category;

  quoteClass({required this.author, required this.quote, required this.category});

  @override
  List<Object?> get props => [quote, author, category];
}

/*
*   {
    "quote": "The will of man is his happiness.",
    "author": "Friedrich Schiller",
    "category": "happiness"

* */
