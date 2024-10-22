import 'package:flutter/material.dart';

class PlaylistProvider extends StatelessWidget {
  final List<Map<String, String>> songs = [
    {"name": "Song 1", "image": "https://via.placeholder.com/150"},
    {"name": "Song 2", "image": "https://via.placeholder.com/150"},
    {"name": "Song 3", "image": "https://via.placeholder.com/150"},
    {"name": "Song 4", "image": "https://via.placeholder.com/150"},
    {"name": "Song 5", "image": "https://via.placeholder.com/150"},
    {"name": "Song 6", "image": "https://via.placeholder.com/150"},
    {"name": "Song 7", "image": "https://via.placeholder.com/150"},
    {"name": "Song 8", "image": "https://via.placeholder.com/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlist'),
        backgroundColor: Colors.grey, // Grey background for AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: songs.map((song) {
            return ListTile(
              leading: Image.network(
                song["image"]!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(song["name"]!),
            );
          }).toList(),
        ),
      ),
    );
  }
}
