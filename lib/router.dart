import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/data_bindings.dart';
import 'views/home_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider(
            create: (_) => ExchangeRateBinding(),
            child: const HomeView(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
