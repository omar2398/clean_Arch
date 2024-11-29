import 'package:flutter/material.dart';
import 'package:trainnnig/core/utils/mediaQueryExtention.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';

class qouteScreenContent extends StatelessWidget {
  final quoteClass Quote;
  const qouteScreenContent({required this.Quote,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      width: context.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).primaryColor
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,
            vertical: 10),
            child: Text(Quote.quote,
            style: Theme.of(context).textTheme.bodyMedium),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Text(Quote.author,
            style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
