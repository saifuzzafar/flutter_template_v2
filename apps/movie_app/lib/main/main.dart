import 'package:core/network/dio/dio_base_option.dart';
import 'package:core/network/dio/dio_provider.dart';
import 'package:core_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/main/flavor.dart';
import 'package:movie_app/main/navigation/movie_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../di/app_provider.dart';

void mainCommon(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppProviders.init(flavor);

  runApp(ProviderScope(
    overrides: [
      AppProviders.dioProvider.overrideWithValue(
        DioProvider.createDio(
          DioBaseOption(baseUrl: flavor.baseUrl),
        ),
      ),
    ],
    child: MovieApp(
      flavor: flavor,
    ),
  ));
}

class MovieApp extends StatelessWidget {
  final Flavor flavor;

  const MovieApp({
    super.key,
    required this.flavor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: MovieRouter.setupRouter(),
      builder: (context, child) {
        return ResponsiveWrapper.builder(child ?? Container(),
            breakpoints: const [
              ResponsiveBreakpoint.resize(360, name: MOBILE),
              ResponsiveBreakpoint.resize(900, name: TABLET, scaleFactor: 1.25),
              ResponsiveBreakpoint.resize(1440,
                  name: DESKTOP, scaleFactor: 1.5),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ]);
      },
      //home: const AppBottomNavigationBar(),
      debugShowCheckedModeBanner: false,
      title: flavor.appTitle,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
