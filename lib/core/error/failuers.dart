import 'package:equatable/equatable.dart';

abstract class failuer extends Equatable{
  @override
  List<Object?> get props => [];
}

class serverFailuer extends failuer{}

class cacheFailuer extends failuer{}