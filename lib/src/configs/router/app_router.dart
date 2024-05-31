
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../presentation/views/MenuItemView.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return   const MenuItemView();
      },
      routes: <RouteBase>[


        // GoRoute(
        //     path: 'MenuItemDetailsView',
        //     builder:(BuildContext context, GoRouterState state) => MenuItemDetailsView(product: state.extra as MenuItem)
        //
        // ),

        GoRoute(
            path: 'MenuItemView',
            builder:(BuildContext context, GoRouterState state) => const MenuItemView()

        ),



      ],
    ),
  ],
);