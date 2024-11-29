import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';

class quoteModel extends quoteClass{
  quoteModel({required super.author, required super.quote, required super.category});

  factory quoteModel.fromJson(Map<String, dynamic> json) => quoteModel(
    quote: json["quote"],
    author: json["author"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "quote": quoteClass,
    "author": author,
    "category": category,
  };
}