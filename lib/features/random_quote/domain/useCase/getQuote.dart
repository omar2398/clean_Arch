import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:trainnnig/core/error/failuers.dart';
import 'package:trainnnig/core/useCase/useCase.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';
import 'package:trainnnig/features/random_quote/domain/repositries/quoteDomainRepositry.dart';

class getQuote extends useCase<quoteClass, noParams> {
  @override
  final quoteDomainRepositry QuoteDomainRepo;

  getQuote({required this.QuoteDomainRepo});

  Future<Either<failuer, quoteClass>> call(noParams params) {
    return QuoteDomainRepo.qetQoutes();
  }
}

class noParams extends Equatable {
  @override
  List<Object?> get props => [];
}
