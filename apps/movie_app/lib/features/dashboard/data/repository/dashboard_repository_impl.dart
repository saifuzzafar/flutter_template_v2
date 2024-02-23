import 'package:core/errors/network_error.dart';
import 'package:fpdart/src/either.dart';
import 'package:movie_app/features/dashboard/data/data_source/dashboard/remote/dashboard_data_source.dart';
import 'package:movie_app/features/dashboard/domain/model/dashboard/favorite_movies_model.dart';
import 'package:movie_app/features/dashboard/domain/repository/dashboard/dashboard_repository.dart';
import 'package:movie_app/features/dashboard/domain/usecase/dashboard/favorite_movies_use_case.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource _dashboardRemoteDS;

  DashboardRepositoryImpl(this._dashboardRemoteDS);

  @override
  Future<Either<NetworkError, FavoriteMoviesModel>> getFavoriteMovies(
      {required FavoriteMoviesUseCaseParams request}) {
    return _dashboardRemoteDS.getFavoriteMovies(request);
  }
}

//   @override
//   Future<Either<NetworkError, FavoriteMoviesModel>> getFavoriteMovies(
//       {required FavoriteMoviesUseCaseParams params}) {
//     return _dashboardRemoteDS.getFavoriteMovies(params);
//   }
// }
