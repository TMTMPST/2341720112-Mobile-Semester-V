import 'package:belanja_go_router/models/item.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja_go_router/pages/home_page.dart';
import 'package:belanja_go_router/pages/item_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(
      path: '/item',
      redirect: (context, state) => state.extra == null ? '/' : null,
      builder: (context, state) => ItemPage(itemArgs: state.extra as Item),
    ),
  ],
);
