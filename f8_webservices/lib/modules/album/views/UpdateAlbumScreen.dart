import 'dart:convert';

import 'package:f8_webservices/modules/album/controller/AlbumController.dart';
import 'package:f8_webservices/modules/album/model/Album.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdateAlbumScreen extends StatefulWidget {
  @override
  State<UpdateAlbumScreen> createState() => _UpdateAlbumScreenState();
}

class _UpdateAlbumScreenState extends State<UpdateAlbumScreen> {
  final TextEditingController _controller = TextEditingController();
  late Future<Album> _futureAlbum;

  @override
  void initState() {
    super.initState();
    _futureAlbum = AlbumController.fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Data Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<Album>(
          future: _futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        "ID: ${snapshot.data!.id} - Titulo: ${snapshot.data!.title}"),
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter Title',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _futureAlbum =
                              AlbumController.updateAlbum(_controller.text);
                        });
                      },
                      child: const Text('Update Data'),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
