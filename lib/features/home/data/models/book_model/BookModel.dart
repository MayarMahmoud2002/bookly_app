import 'package:bookly_app/features/home/data/models/book_model/AccessInfo.dart';
import 'package:bookly_app/features/home/data/models/book_model/SaleInfo.dart';
import 'package:bookly_app/features/home/data/models/book_model/SearchInfo.dart';
import 'package:bookly_app/features/home/data/models/book_model/VolumeInfo.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
    bookId: id!,
    image: volumeInfo?.imageLinks?.thumbnail ?? '',
    authName: volumeInfo!.authors!.first!,
    price: 0.0,
    rating: volumeInfo!.maturityRating!,
    title: volumeInfo!.title!,
  );

  BookModel.fromJson(dynamic json)
      : super(
    bookId: json['id'],
    image: json['volumeInfo']?['imageLinks']?['thumbnail'] ?? '',
    authName: json['volumeInfo']?['authors']?.first ?? '',
    price: 0.0,
    rating: json['volumeInfo']?['maturityRating'] ?? '',
    title: json['volumeInfo']?['title'] ?? '',
  ) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo?.fromJson(json['searchInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = bookId;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo!.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo!.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo!.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo!.toJson();
    }
    return map;
  }
}


// import 'package:bookly_app/features/home/data/models/book_model/AccessInfo.dart';
// import 'package:bookly_app/features/home/data/models/book_model/SaleInfo.dart';
// import 'package:bookly_app/features/home/data/models/book_model/SearchInfo.dart';
// import 'package:bookly_app/features/home/data/models/book_model/VolumeInfo.dart';
// import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
//
// class BookModel extends BookEntity {
//   String? kind;
//   String? id;
//   String? etag;
//   String? selfLink;
//   VolumeInfo? volumeInfo;
//   SaleInfo? saleInfo;
//   AccessInfo? accessInfo;
//   SearchInfo? searchInfo;
//
//   BookModel({
//     this.kind,
//     this.id,
//     this.etag,
//     this.selfLink,
//     this.volumeInfo,
//     this.saleInfo,
//     this.accessInfo,
//     this.searchInfo,
//   }) : super(
//             bookId: id!,
//             image: volumeInfo?.imageLinks?.thumbnail ?? '',
//             authName: volumeInfo!.authors!.first!,
//             price: 0.0,
//             rating: volumeInfo!.maturityRating!,
//             title: volumeInfo!.title!);
//
//   BookModel.fromJson(dynamic json) : super(bookId: id!,
//       image: volumeInfo?.imageLinks?.thumbnail ?? '',
//       authName: volumeInfo!.authors!.first!,
//       price: 0.0,
//       rating: volumeInfo!.maturityRating!,
//       title: volumeInfo!.title!) {
//     rating = json["rating"];
//     price = json['price'];
//     authName = json['authName'];
//     image = json['image'];
//     bookId = json['bookId'];
//     title = json['title'];
//     kind = json['kind'];
//     bookId = json['id'];
//     etag = json['etag'];
//     selfLink = json['selfLink'];
//     volumeInfo = json['volumeInfo'] != null
//         ? VolumeInfo.fromJson(json['volumeInfo'])
//         : null;
//     saleInfo =
//         json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
//     accessInfo = json['accessInfo'] != null
//         ? AccessInfo.fromJson(json['accessInfo'])
//         : null;
//     searchInfo = json['searchInfo'] != null
//         ? SearchInfo.fromJson(json['searchInfo'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['kind'] = kind;
//     map['id'] = bookId;
//     map['etag'] = etag;
//     map['selfLink'] = selfLink;
//     if (volumeInfo != null) {
//       map['volumeInfo'] = volumeInfo!.toJson();
//     }
//     if (saleInfo != null) {
//       map['saleInfo'] = saleInfo!.toJson();
//     }
//     if (accessInfo != null) {
//       map['accessInfo'] = accessInfo!.toJson();
//     }
//     if (searchInfo != null) {
//       map['searchInfo'] = searchInfo!.toJson();
//     }
//     return map;
//   }
// }
