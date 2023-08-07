import 'package:dartz/dartz.dart';

import '../../errors/failure.dart';

abstract class UseCase<Type , NoParam> {
  Future<Either<Failure, Type>> call([NoParam? param]); //optional parametars
}
class NoParam {}
