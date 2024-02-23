import 'package:core/errors/network_error.dart';
import 'package:core/network/safe_api_call/safe_api_call.dart';
import 'package:fpdart/fpdart.dart';
import 'package:movie_app/features/dashboard/data/network/dashboard_api_service.dart';
import 'package:movie_app/features/dashboard/domain/model/dashboard/favorite_movies_model.dart';
import 'package:movie_app/features/dashboard/domain/usecase/dashboard/favorite_movies_use_case.dart';

/// This class [DashboardRemoteDataSource] is used to fetch Api from network
/// using [DashboardApiService] class.
class DashboardRemoteDataSource {
  final DashboardApiService _dashboardApiService;

  DashboardRemoteDataSource(this._dashboardApiService);

  Future<Either<NetworkError, FavoriteMoviesModel>> getFavoriteMovies(
      FavoriteMoviesUseCaseParams param) async {
    final response = await safeApiCall(_dashboardApiService.fetchFavoriteMovie(
        userId: param.favoriteMoviesRequest.userId));

    return response.fold((l) => left(l), (r) {
      return Right(FavoriteMoviesModel(statusCode: r.data.statusCode ?? ''));
    });
  }
}
