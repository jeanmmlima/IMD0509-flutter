import 'package:f3_lugares/models/country.dart';
import 'package:flutter/material.dart';

class CountryPlacesScreen extends StatelessWidget {
  //Country country;
  // CountryPlacesScreen(this.country);

  @override
  Widget build(BuildContext context) {
    final Country country =
        ModalRoute.of(context)!.settings.arguments as Country;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lugares para Conhecer'),
        //teste
        //teste
        //teste
      ),
      body: Center(
        child: Text('País selecionado: ${country.title}'),
      ),
    );
  }
}
