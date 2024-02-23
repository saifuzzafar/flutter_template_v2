import 'package:core/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/features/dashboard/domain/model/dashboard/favorite_movies_model.dart';

part 'favorite_movies_entity.g.dart';

@JsonSerializable()
class FavoriteMoviesEntity
    implements
        BaseLayerDataTransformer<FavoriteMoviesEntity, FavoriteMoviesModel> {
  @JsonKey(name: 'StatusCode')
  final String? statusCode;

  @JsonKey(name: 'Message')
  final String? message;

  @JsonKey(name: 'IList')
  final List<FavoriteMoviesListEntity>? productList;

  FavoriteMoviesEntity({this.statusCode, this.message, this.productList});

  factory FavoriteMoviesEntity.fromJson(Map<String, dynamic> json) =>
      _$FavoriteMoviesEntityFromJson(json);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'StatusCode': statusCode,
        'Message': message,
        'IList': productList?.map((v) => v.toJson()).toList(),
      };

  @override
  FavoriteMoviesEntity restore(FavoriteMoviesModel data) {
    return FavoriteMoviesEntity().restore(data);
  }

  @override
  FavoriteMoviesModel transform() {
    return FavoriteMoviesModel(statusCode: statusCode);
  }
}

@JsonSerializable()
class FavoriteMoviesListEntity {
  @JsonKey(name: 'MovieId')
  int? movieId;
  @JsonKey(name: 'CustomerName')
  String? customerName;

  FavoriteMoviesListEntity({
    this.movieId,
    this.customerName,
  });

  factory FavoriteMoviesListEntity.fromJson(Map<String, dynamic> json) =>
      _$FavoriteMoviesListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteMoviesListEntityToJson(this);
}
