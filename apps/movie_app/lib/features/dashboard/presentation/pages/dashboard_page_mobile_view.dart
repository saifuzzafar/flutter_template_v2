import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/di/app_provider.dart';

/// This class [DashboardPageMobileView] which specifically used to render Mobile UI
class DashboardPageMobileView extends StatelessWidget {
  const DashboardPageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            "Mobile view v2",
            style: TextStyle(fontSize: 24),
          ),
        ),
        Center(
          child: Consumer(
            builder: (context, watch, _) {
              //final flavor = context.read(AppProviders.flavorProvider);
              final flavor = watch.read(AppProviders.flavorProvider);
              return Text(
                "${flavor.env}",
                style: const TextStyle(fontSize: 24),
              );
            },
          ),
        ),
      ],
    );
  }
}
