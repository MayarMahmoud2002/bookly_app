import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/failure/failure.dart';
import 'package:bookly_app/features/home/domain/use_cases/show_newest_books_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<Future<Either<Failure, List<BookEntity>>>> fetchNewestBooks()
  async {
    emit(NewestBooksLoading());
    var result = fetchNewestBooksUseCase.call();
    return result;

    
  }
}
