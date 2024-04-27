

import 'package:auto_route/auto_route.dart';
import 'package:expense_tracker_app/features/home/home.dart';
import 'package:expense_tracker_app/features/settings/settings.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,path: "/"),
    AutoRoute(page: SettingsRoute.page)
  ];
}