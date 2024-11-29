import 'package:equatable/equatable.dart';
import 'package:trainnnig/features/random_quote/domain/entities/quote.dart';

abstract class QuoteState extends Equatable {
  const QuoteState();

  @override
  List<Object?> get props => [];
}

class QuoteInitial extends QuoteState {}

class QuoteLoadingState extends QuoteState {}

class QuoteLoadedState extends QuoteState {
  final quoteClass QuoteClass;

  QuoteLoadedState({required this.QuoteClass});

  @override
  List<Object?> get props => [QuoteClass];
}

class QuoteFaildState extends QuoteState {
  final String msg;

  QuoteFaildState({required this.msg});

  @override
  List<Object?> get props => [msg];
}
