
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:spoonacular/src/configs/router/app_router.dart';
import 'package:spoonacular/src/configs/themes/app_themes.dart';
import 'package:spoonacular/src/locator.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
      ),
    );
  }
}