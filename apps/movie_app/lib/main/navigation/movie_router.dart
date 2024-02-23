import 'package:go_router/go_router.dart';
import 'package:movie_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:movie_app/main/navigation/route_path.dart';

class MovieRouter {
  static GoRouter setupRouter() {
    return GoRouter(
      // Define your routes here
      routes: [
        // Home route
        GoRoute(
          path: RoutePaths.home,
          builder: (context, state) => DashboardPage(),
        ),
        // About route

        // Add more routes as needed
      ],
    );
  }
}
