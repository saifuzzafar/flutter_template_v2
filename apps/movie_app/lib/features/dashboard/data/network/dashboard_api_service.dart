import 'package:dio/dio.dart';
import 'package:movie_app/features/dashboard/data/constants/add_product_to_cart_options.dart';
import 'package:movie_app/features/dashboard/data/constants/dashboard_endpoints.dart';
import 'package:movie_app/features/dashboard/data/entity/favorite_movies_entity.dart';
import 'package:retrofit/retrofit.dart';

/// This class [DashboardApiService] is responsible
/// to include api calls related to the Dashboard feature
/// @RestApi is annotation which generate a g.dart file which contain implementation
/// of all abstract methods

part 'dashboard_api_service.g.dart';

@RestApi()
abstract class DashboardApiService {
  factory DashboardApiService(Dio dio) = _DashboardApiService;

  @GET(DashboardEndpoints.favoriteMovies)
  Future<HttpResponse<FavoriteMoviesEntity>> fetchFavoriteMovie({
    @Query(FavoriteMoviesRequestParams.userId) required int userId,
  });
}
