import 'package:bookly_app/core/utils/failure/failure.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/use_case/no_param_use_case.dart';
import '../entities/book_entity.dart';
import '../repository/book_repo.dart';

class FetchBooksUseCase extends UseCase<List<BookEntity> , NoParam> {
  final BookRepo homeRepo;

  FetchBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchBooks();
  }
}


