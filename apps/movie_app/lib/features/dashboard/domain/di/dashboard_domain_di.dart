import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/dashboard/data/di/network_module.dart';
import 'package:movie_app/features/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:movie_app/features/dashboard/domain/repository/dashboard/dashboard_repository.dart';
import 'package:movie_app/features/dashboard/domain/usecase/dashboard/favorite_movies_use_case.dart';

var dashboardRepositoryProvider = Provider<DashboardRepository>(
  (ref) => DashboardRepositoryImpl(
    ref.read(dashboardRemoteDSProvider),
  ),
);

final favoriteMoviesUseCaseProvider =
    Provider.autoDispose<FavoriteMoviesUseCase>((ref) => FavoriteMoviesUseCase(
          ref.read(dashboardRepositoryProvider),
        ));
