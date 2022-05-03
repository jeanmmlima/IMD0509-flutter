import 'package:f3_lugares/components/country_item.dart';
import 'package:flutter/material.dart';
import '../data/my_data.dart';

class CountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              200, //cada elemento com extenso maxima de 200 pixel
          childAspectRatio: 3 / 2, //proporcao de cada elemento dentro do grid
          crossAxisSpacing: 20, //espacamento no eixo cruzado
          mainAxisSpacing: 20, //espacamento no eixo principal
        ),
        children: DUMMY_COUNTRIES.map((country) {
          return CountryItem(country);
        }).toList(),
      ),
    );
  }
}
