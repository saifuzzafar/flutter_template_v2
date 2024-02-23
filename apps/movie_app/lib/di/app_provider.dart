import 'package:core/network/dio/dio_base_option.dart';
import 'package:core/network/dio/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/main/flavor.dart';

class AppProviders {
  static late final Provider<Dio> dioProvider;
  static late final Provider<Flavor> flavorProvider;

  static Future<void> init(Flavor flavor) async {
    final baseOptions = DioBaseOption(baseUrl: flavor.baseUrl);

    dioProvider = Provider<Dio>((ref) {
      return DioProvider.createDio(baseOptions);
    });

    flavorProvider = Provider<Flavor>((ref) {
      return flavor;
    });
  }
}

// final baseOptions = DioBaseOption(baseUrl: NetworkConstant.baseApiUrl);
//
// final dioProvider = Provider<Dio>(
//   (ref) {
//     return DioProvider.createDio(baseOptions);
//   },
// );
//
// class AppProviders {
//   init(Flavor flavor) async {
//     final baseOptions = DioBaseOption(baseUrl: NetworkConstant.baseApiUrl);
//
//     final dioProvider = Provider<Dio>(
//       (ref) {
//         return DioProvider.createDio(baseOptions);
//       },
//     );
//   }
// }

// final homePageControllerProvider = Provider((ref) {
//   final entryRepository = ref.watch(entryRepositoryProvider);
//   return HomePageController(ref: ref, entryRepository: entryRepository);
// });
