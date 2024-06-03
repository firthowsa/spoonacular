
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/response/menu_item.dart';
import '../../presentation/views/cart_view.dart';
import '../../presentation/views/menu_item_details.dart';
import '../../presentation/views/menu_item_screen.dart';
import '../../presentation/views/success_screen.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return   const MenuItemScreen();
      },
      routes: <RouteBase>[


        GoRoute(
            path: 'MenuItemDetails',
            builder:(BuildContext context, GoRouterState state) => MenuItemDetails(menuItem: state.extra as MenuItem)

        ),

        GoRoute(
            path: 'MenuItemScreen',
            builder:(BuildContext context, GoRouterState state) => const MenuItemScreen()

        ),
        GoRoute(
            path: 'CartScreen',
            builder:(BuildContext context, GoRouterState state) => const CartScreen()

        ),
        GoRoute(
            path: 'SuccessScreen',
            builder:(BuildContext context, GoRouterState state) => const SuccessScreen()

        ),



      ],
    ),
  ],
);