import 'package:core/errors/network_error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:movie_app/features/dashboard/domain/model/dashboard/favorite_movies_model.dart';
import 'package:movie_app/features/dashboard/domain/usecase/dashboard/favorite_movies_use_case.dart';

/// This class [DashboardRepository] is the blueprint of network api call
abstract class DashboardRepository {
  Future<Either<NetworkError, FavoriteMoviesModel>> getFavoriteMovies(
      {required FavoriteMoviesUseCaseParams request});
}
