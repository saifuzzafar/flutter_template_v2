import 'package:flutter/material.dart';

/// This class [DashboardPageWebView] which specifically used to render Web UI
class DashboardPageWebView extends StatelessWidget {
  const DashboardPageWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Web view",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
