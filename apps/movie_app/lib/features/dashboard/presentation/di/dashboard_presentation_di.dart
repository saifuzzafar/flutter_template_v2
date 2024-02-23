import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/dashboard/domain/di/dashboard_domain_di.dart';
import 'package:movie_app/features/dashboard/presentation/pages/dashboard_page_viewmodel.dart';

final dashboardViewModelProvider =
    ChangeNotifierProvider.autoDispose<DashboardPageViewModel>(
  (ref) => DashboardPageViewModel(
    favoriteMoviesUseCase: ref.read(favoriteMoviesUseCaseProvider),
  ),
);
