import 'package:clothshop/controller/dashboard_binding.dart';
import 'package:clothshop/routes/app_route.dart';
import 'package:clothshop/views/dashboard/dashboard_screen.dart';
import 'package:clothshop/views/getstart/get_start_page.dart';
import 'package:clothshop/views/signin/sign_in_page.dart';
import 'package:clothshop/views/signup/sign_up_page.dart';
import 'package:get/get.dart';

class AppPage {
  static var list = [
    GetPage(
        name: AppRoute.dashboard,
        page: () => const DashboardScreen(),
        binding: DashboardBinding()),
    GetPage(
      name: AppRoute.getStart,
      page: () => const GetStartPage(),
    ),
    GetPage(
      name: AppRoute.signIn,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: AppRoute.signUp,
      page: () => const SignUpPage(),
    )
  ];
}
