import 'package:bookly_app/constances/contants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:hive/hive.dart';

import '../../../../../core/utils/functions/save_books.dart';
import '../../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource
{
  Future<List<BookEntity>> fetchBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource
{
  //fetch data from api
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchBooks() async {
   var data =  await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
   List <BookEntity> books = getBooksList (data); //fetch data
   saveBooks(books , kFeaturedBox);
   return books;

   //store books in local
   var box = Hive.box(kFeaturedBox);
   box.addAll(books);


     return books;

  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data =  await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List <BookEntity> books = getBooksList (data);
    saveBooks(books , kNewestBox);
    return books;


  }
  List <BookEntity> getBooksList (Map <String , dynamic> data)
  {
    List <BookEntity> books = [];
    for (var bookMap in data ['items'])
    {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;


  }


}