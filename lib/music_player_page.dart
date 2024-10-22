import 'package:flutter/material.dart';

class MusicPlayerPage extends StatelessWidget {
  final Map<String, String> song;

  const MusicPlayerPage({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background for the music player
      appBar: AppBar(
        title: const Text("Now Playing"),
        backgroundColor: Colors.grey[900], // Dark grey app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular avatar displaying the song image
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(song["image"]!), // Load song image
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[800], // Fallback color
                ),
                child: Icon(
                  Icons.music_note,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Song name display
            Text(
              song["name"]!,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            // Control buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.skip_previous, color: Colors.white, size: 36),
                  onPressed: () {
                    // Implement skip previous functionality
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow, color: Colors.white, size: 36),
                  onPressed: () {
                    // Implement play functionality
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next, color: Colors.white, size: 36),
                  onPressed: () {
                    // Implement skip next functionality
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Pause button
            IconButton(
              icon: const Icon(Icons.pause, color: Colors.white, size: 36),
              onPressed: () {
                // Implement pause functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
