import 'package:core_flutter/core/base_ui/base_page_view_model.dart';
import 'package:movie_app/features/dashboard/domain/usecase/dashboard/favorite_movies_use_case.dart';

class DashboardPageViewModel extends BasePageViewModel {
  final FavoriteMoviesUseCase favoriteMoviesUseCase;

  DashboardPageViewModel({required this.favoriteMoviesUseCase});
}
