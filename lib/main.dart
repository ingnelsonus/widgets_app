import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'config/router/app_router.dart';

void main() {
  runApp(
    
    const ProviderScope(
      child: MainApp(),
    )    
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: 'Flutter widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      // home: const HomeScreen(),
      // routes:{
      //   '/buttons':(context) => const ButtonsScreen(),
      //   '/cards': (context) => const CardsScreen()
      // }
    );
  }
}
