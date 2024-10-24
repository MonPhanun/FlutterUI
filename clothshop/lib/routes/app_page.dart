import 'package:clothshop/controller/dashboard_binding.dart';
import 'package:clothshop/routes/app_route.dart';
import 'package:clothshop/views/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

class AppPage {
  static var list = [
    GetPage(
        name: AppRoute.dashboard,
        page: () => const DashboardScreen(),
        binding: DashboardBinding())
  ];
}
