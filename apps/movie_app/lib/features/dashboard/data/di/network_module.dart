import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/di/app_provider.dart';
import 'package:movie_app/features/dashboard/data/data_source/dashboard/remote/dashboard_data_source.dart';
import 'package:movie_app/features/dashboard/data/network/dashboard_api_service.dart';

final Provider<DashboardApiService> dashboardApiServiceProvider =
    Provider<DashboardApiService>(
  (ref) {
    final dio = ref.watch(AppProviders.dioProvider);
    return DashboardApiService(dio);
  },
);

final dashboardRemoteDSProvider = Provider<DashboardRemoteDataSource>(
    (ref) => DashboardRemoteDataSource(ref.read(dashboardApiServiceProvider)));
