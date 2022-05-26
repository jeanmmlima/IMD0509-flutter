import 'package:f8_webservices/modules/album/controller/AlbumController.dart';
import 'package:f8_webservices/modules/album/model/Album.dart';
import 'package:f8_webservices/modules/album/views/AlbumsScreen.dart';
import 'package:f8_webservices/modules/album/views/CreateAlbumScreen.dart';
import 'package:f8_webservices/modules/album/views/UpdateAlbumScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Services Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AlbumsScreen(),
        '/update-album': (context) => UpdateAlbumScreen(),
        '/create-album': (context) => CreateAlbumScreen(),
      },
    );
  }
}
