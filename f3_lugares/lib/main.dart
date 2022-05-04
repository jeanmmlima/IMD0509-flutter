import 'package:f3_lugares/models/place.dart';
import 'package:f3_lugares/screens/countries_places_screen.dart';
import 'package:f3_lugares/screens/place_detail_screen.dart';
import 'package:f3_lugares/screens/settings_screen.dart';
import 'package:f3_lugares/screens/tabs_screen.dart';
import 'package:f3_lugares/utils/app_routes.dart';
import 'package:flutter/material.dart';

import 'screens/countries_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlacesToGo',
      theme: ThemeData(
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(primary: Colors.purple, secondary: Colors.amber),
          //primarySwatch: Colors.purple,
          //accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      initialRoute: '/',
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.COUNTRY_PLACES: (ctx) => CountryPlacesScreen(),
        AppRoutes.PLACES_DETAIL: (ctx) => PlaceDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
