import 'package:flutter/material.dart';

/// This class [DashboardPageTabView] which specifically used to render Web UI
class DashboardPageTabView extends StatelessWidget {
  const DashboardPageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Tab view",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
