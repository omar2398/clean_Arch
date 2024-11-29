import 'package:dartz/dartz.dart';
import 'package:trainnnig/core/error/exceptions.dart';
import 'package:trainnnig/core/error/failuers.dart';
import 'package:trainnnig/core/network/networkInfo.dart';
import 'package:trainnnig/features/random_quote/data/dataSources/localDataSource.dart';
import 'package:trainnnig/features/random_quote/data/dataSources/serverDataSource.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';
import 'package:trainnnig/features/random_quote/domain/repositries/quoteDomainRepositry.dart';

class quoteRepositryImp implements quoteDomainRepositry {
  final networkInfo NetWorkInfo;
  final serverDataSource ServerDataSource;
  final localQuoteDataSource LocalQuoteDataSource;

  quoteRepositryImp(
      {required this.NetWorkInfo,
      required this.ServerDataSource,
      required this.LocalQuoteDataSource});

  @override
  Future<Either<failuer, quoteClass>> qetQoutes() async {
    if (await NetWorkInfo.isConnected){
      try{
        final serverQuoteData = await ServerDataSource.fetchQuoteRemote();
        return Right(serverQuoteData);
      } on ServerExceptions{
        return Left(serverFailuer());
      }}
    else{
    try{
      final localQuoteData = await LocalQuoteDataSource.fetchQuoteLocal();
      return Right(localQuoteData);
    } on LocalExceptions{
      return Left(cacheFailuer());
    }
    }
  }
}
