import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/failure/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_books_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchBooksUseCase) : super(FeaturedBooksInitial());
  final FetchBooksUseCase fetchBooksUseCase;
  Future<Future<Either<Failure, List<BookEntity>>>> fetchFeaturedBooks ()
  async {
    emit(FeaturedBooksLoading());
    var result = fetchBooksUseCase.call();
    return result;

  }
}
