import 'package:core_flutter/core/base_ui/base_page.dart';
import 'package:core_flutter/core/base_ui/base_page_view_model.dart';
import 'package:core_flutter/core/base_ui/device_detector_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/dashboard/presentation/di/dashboard_presentation_di.dart';
import 'package:movie_app/features/dashboard/presentation/pages/dashboard_page_mobile_view.dart';
import 'package:movie_app/features/dashboard/presentation/pages/dashboard_page_tab_view.dart';
import 'package:movie_app/features/dashboard/presentation/pages/dashboard_page_viewmodel.dart';
import 'package:movie_app/features/dashboard/presentation/pages/dashboard_page_web_view.dart';
import 'package:riverpod/src/framework.dart';

/// This class [DashboardPage] which is UI screen which display interact with the user
class DashboardPage extends BasePage<DashboardPageViewModel> {
  DashboardPage({super.key});

  @override
  State<StatefulWidget> createState() => DashboardPageState();
}

/// This class [DashboardPageState] which consume by HomePage as page state
class DashboardPageState extends BaseStatefulPage {
  @override
  ProviderBase provideBase() {
    return dashboardViewModelProvider;
  }

  @override
  Widget buildView(BuildContext context, BasePageViewModel model) {
    return DeviceDetectorWidget(
      webSiteView: () => const DashboardPageWebView(),
      phoneView: () => const DashboardPageMobileView(),
      tabletView: () => const DashboardPageTabView(),
    );
  }
}
