// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_movies_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteMoviesEntity _$FavoriteMoviesEntityFromJson(
        Map<String, dynamic> json) =>
    FavoriteMoviesEntity(
      statusCode: json['StatusCode'] as String?,
      message: json['Message'] as String?,
      productList: (json['IList'] as List<dynamic>?)
          ?.map((e) =>
              FavoriteMoviesListEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoriteMoviesEntityToJson(
        FavoriteMoviesEntity instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'IList': instance.productList,
    };

FavoriteMoviesListEntity _$FavoriteMoviesListEntityFromJson(
        Map<String, dynamic> json) =>
    FavoriteMoviesListEntity(
      movieId: json['MovieId'] as int?,
      customerName: json['CustomerName'] as String?,
    );

Map<String, dynamic> _$FavoriteMoviesListEntityToJson(
        FavoriteMoviesListEntity instance) =>
    <String, dynamic>{
      'MovieId': instance.movieId,
      'CustomerName': instance.customerName,
    };
