import 'package:f8_webservices/components/AlbumList.dart';
import 'package:f8_webservices/modules/album/controller/AlbumController.dart';
import 'package:f8_webservices/modules/album/model/Album.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AlbumsScreen extends StatefulWidget {
  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  late Future<Album> futureAlbum;
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = AlbumController.getById(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Com Web Services"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<List<Album>>(
              future: AlbumController.fetchAlbums(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  return AlbumList(album: snapshot.data!);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Divider(),
            FutureBuilder<Album>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                        "ID: ${snapshot.data!.id}\nTitulo: ${snapshot.data!.title}");
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                }),
            Divider(),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/update-album');
                },
                child: Text('Atualize um album')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/create-album');
                },
                child: Text('Crie um album'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            futureAlbum = AlbumController.getById(count);
          });
          count++;
          futureAlbum.then((album) => print(album.title));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
