import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainnnig/core/error/failuers.dart';
import 'package:trainnnig/core/useCase/useCase.dart';
import 'package:trainnnig/core/utils/appStrings.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';
import 'package:trainnnig/features/random_quote/domain/useCase/getQuote.dart';
import 'package:trainnnig/features/random_quote/prsentation/cubit/quote_state.dart';

class QuoteCubit extends Cubit<QuoteState> {
  final useCase UseCase;

  QuoteCubit({required this.UseCase}) : super(QuoteInitial());

  Future<void> getQuoteAllSources() async {
    emit(QuoteLoadingState());
    final response = await UseCase(noParams());
    return emit(response.fold(
        (failuer) => QuoteFaildState(msg: _mapFailuer(failuer)),
        (quoteClass) => QuoteLoadedState(QuoteClass: quoteClass)));
  }

  String _mapFailuer(failuer FailuerTyped) {
    switch (FailuerTyped.runtimeType) {
      case serverFailuer:
        return appStrings.sserverfail;
      case cacheFailuer:
        return appStrings.localCacheKey;
      default:
        return appStrings.unexpectedError;
    }
  }
}
