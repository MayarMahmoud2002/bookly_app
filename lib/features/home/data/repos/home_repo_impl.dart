
import 'package:bookly_app/features/home/data/data_source/local_data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/remote_data_source/home_remote_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repository/book_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/failure/failure.dart';

class HomeRepoImpl implements BookRepo
{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  //done
  HomeRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);
  @override
  Future<Either<Failure, List<BookEntity>>> fetchBooks() async {//async => not used remove it if u want
    List <BookEntity> bookList;
    try
    {
      bookList =  homeLocalDataSource.fetchBooks();
      if (bookList.isNotEmpty)
      {
        return right(bookList);

      }
       bookList = await homeRemoteDataSource.fetchBooks();
      return right(bookList);

    } catch (e)
    {
      return left(ServerFailure(e.toString()));
    }

  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    List <BookEntity> books;
    try
    {
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty)
      {
        return right(books);

      }
       books  = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);

    } catch (e)
    {
      return left(ServerFailure(e.toString()));
    }

  }

}