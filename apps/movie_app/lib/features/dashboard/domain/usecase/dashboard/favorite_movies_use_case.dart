import 'package:core/core/base_usecase/base_usecase.dart';
import 'package:core/core/base_usecase/params.dart';
import 'package:core/errors/app_error.dart';
import 'package:core/errors/network_error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:movie_app/features/dashboard/domain/model/dashboard/favorite_movies_model.dart';
import 'package:movie_app/features/dashboard/domain/model/dashboard/favorite_movies_request.dart';
import 'package:movie_app/features/dashboard/domain/repository/dashboard/dashboard_repository.dart';

class FavoriteMoviesUseCase extends BaseUseCase<NetworkError,
    FavoriteMoviesUseCaseParams, FavoriteMoviesModel> {
  final DashboardRepository _repository;

  FavoriteMoviesUseCase(
    this._repository,
  );

  @override
  Future<Either<NetworkError, FavoriteMoviesModel>> execute(
      {required FavoriteMoviesUseCaseParams params}) {
    return _repository.getFavoriteMovies(request: params);
  }
}

class FavoriteMoviesUseCaseParams extends Params {
  final FavoriteMoviesRequest favoriteMoviesRequest;

  FavoriteMoviesUseCaseParams({required this.favoriteMoviesRequest});

  @override
  Either<AppError, bool> verify() {
    return const Right(true);
  }
}
