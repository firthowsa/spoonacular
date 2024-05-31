
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:spoonacular/src/configs/router/app_router.dart';
import 'package:spoonacular/src/configs/themes/app_themes.dart';
import 'package:spoonacular/src/domain/repositories/api_repository.dart';
import 'package:spoonacular/src/locator.dart';
import 'package:spoonacular/src/presentation/cubit/menu_item_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:  [
        BlocProvider(
          create: (context) => MenuItemCubit(
            locator<ApiRepository>(),
          )..getMenuItems(),
        ),

      ],
      child :OKToast(
        child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark
        ),
      ),
    );
  }
}