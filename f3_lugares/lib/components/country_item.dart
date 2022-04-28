import 'package:f3_lugares/screens/countries_places_screen.dart';
import 'package:f3_lugares/utils/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/country.dart';

class CountryItem extends StatelessWidget {
  final Country country;

  const CountryItem(this.country);

  void _selectedCountry(BuildContext context) {
    /*
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return CountryPlacesScreen(country);
    }));
    */
    Navigator.of(context).pushNamed(
      AppRoutes.COUNTRY_PLACES,
      arguments: country,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCountry(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          country.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [
                  country.color.withOpacity(0.5), //cor passad com opacidade
                  country.color, //cor passada
                ],
                begin: Alignment.topLeft, //inicio do gradiente
                end: Alignment.bottomRight // fim
                )),
      ),
    );
  }
}
