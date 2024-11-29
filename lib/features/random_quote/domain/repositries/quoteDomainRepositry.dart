import 'package:dartz/dartz.dart';
import 'package:trainnnig/core/error/failuers.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';

abstract class quoteDomainRepositry{
  Future<Either<failuer, quoteClass>> qetQoutes();
}