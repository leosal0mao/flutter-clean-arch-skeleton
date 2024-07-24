import 'package:flutter/material.dart';

import '../../presentation/pages/example_presentation/page/eventos_page.dart';

class AppRoutes {
  AppRoutes._();

  //static variables
  static const String eventos = '/';

  static final routes = <String, WidgetBuilder>{
    eventos: (BuildContext context) => const EventosPage(),
  };
}
