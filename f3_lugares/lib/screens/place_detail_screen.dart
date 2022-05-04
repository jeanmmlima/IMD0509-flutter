import 'package:f3_lugares/models/place.dart';
import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final place = ModalRoute.of(context)?.settings.arguments as Place;

    return Scaffold(
      appBar: AppBar(
        title: Text(place.titulo),
      ),
      /*
      body: Center(
        child: Text('Detalhes da Lugar!'),
      ),*/
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              place.imagemUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Dicas',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            width: 300,
            height: 250,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                itemCount: place.recomendacoes.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(place.recomendacoes[index]),
                        subtitle: Text(place.titulo),
                        onTap: () {
                          print(place.recomendacoes[index]);
                        },
                      ),
                      Divider(),
                    ],
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(place.titulo);
        },
        child: Icon(Icons.star),
      ),
    );
  }
}
