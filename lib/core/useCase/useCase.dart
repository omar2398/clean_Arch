import 'package:dartz/dartz.dart';
import 'package:trainnnig/core/error/failuers.dart';

abstract class useCase<Type, Params>{
  Future<Either<failuer, Type>> call(Params params);
}