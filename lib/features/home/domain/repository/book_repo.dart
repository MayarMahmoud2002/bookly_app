import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/failure/failure.dart';


abstract class BookRepo
{
  Future<Either<Failure,List<BookEntity>>> fetchBooks();
  Future <Either<Failure,List<BookEntity>>> fetchNewestBooks();
}