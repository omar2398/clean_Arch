import 'package:dartz/dartz.dart';
import 'package:trainnnig/core/error/failures.dart';
import 'package:trainnnig/core/usecases/usecase.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';
import 'package:trainnnig/features/random_quote/domain/repositories/quote_repository.dart';


class GetRandomQuote implements UseCase<Quote, NoParams> {
  final QuoteRepository quoteRepository;

  GetRandomQuote({required this.quoteRepository});
  @override
  Future<Either<Failure, Quote>> call(NoParams params) =>
      quoteRepository.getRandomQuote();
}
