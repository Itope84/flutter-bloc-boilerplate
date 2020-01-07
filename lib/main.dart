import 'package:flutter/material.dart';
import 'package:gooboba_mobile/bloc/main.dart';
import 'package:gooboba_mobile/routes.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainBloc>(
      create: (context) => MainBloc(),
      child: MaterialApp(
        title: 'Kashbase',
        // navigatorKey: locator<NavigationService>().navigatorKey,
        routes: routes,
        theme: appTheme,
        navigatorObservers: [],
        debugShowCheckedModeBanner: false,
        initialRoute: DiscoverScreen.routeName,
      ),
    );
  }
}
