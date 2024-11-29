import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainnnig/core/error/exceptions.dart';
import 'package:trainnnig/core/utils/appStrings.dart';
import 'package:trainnnig/features/random_quote/data/models/quoteModel.dart';

abstract class localQuoteDataSource {
  Future<quoteModel> fetchQuoteLocal();
  Future<void> cachQoute(quoteModel QuoteModel);
}

class localDataSourceImpl implements localQuoteDataSource {
  final SharedPreferences sharedPreferences;

  localDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cachQoute(quoteModel quote) {
    return sharedPreferences.setString(appStrings
        .localCacheKey, json.encode(quote));
  }

  @override
  Future<quoteModel> fetchQuoteLocal() {
    final jsonString = sharedPreferences.getString(appStrings.localCacheKey);
    if (jsonString != null){
      final cacheRandomQuote = Future.value(quoteModel.fromJson(json.decode(jsonString)));
      return cacheRandomQuote;
    }else{
      throw LocalExceptions();
    }
  }
}