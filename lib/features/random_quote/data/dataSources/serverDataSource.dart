import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trainnnig/core/Api/endPoints.dart';
import 'package:trainnnig/core/error/exceptions.dart';
import 'package:trainnnig/features/random_quote/data/models/quoteModel.dart';

abstract class serverDataSource {
  Future<quoteModel> fetchQuoteRemote();
}

class serverDatasourceImpl implements serverDataSource {
  final http.Client client;

  serverDatasourceImpl({required this.client});

  @override
  Future<quoteModel> fetchQuoteRemote() async {
    final responseUrl = Uri.parse(endPoints.quoteUrl);
    final response =
        await client.get(responseUrl, headers: {'X-Api-Key': endPoints.myApiKey});
    if (response.statusCode == 200){
      return quoteModel.fromJson(json.decode(response.body));
    }else{
      throw ServerExceptions();
    }
  }
}
