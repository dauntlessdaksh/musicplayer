import 'package:flutter/material.dart';
import 'package:musicplayer/components/my_drawer.dart'; // Replace with actual import of your drawer
import 'music_player_page.dart'; // Import the new music player page

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  final List<Map<String, String>> songs = [
    {"name": "God's Plan", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "In My Feelings", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "One Dance", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Hotline Bling", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Started From the Bottom", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Nonstop", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Controlla", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Take Care", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Passionfruit", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Energy", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Nice For What", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Headlines", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Worst Behavior", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Fake Love", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "0 to 100", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
    {"name": "Find Your Love", "image": "assets\images\images\wp1849255-travis-scott-wallpapers.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background for the entire page
      appBar: AppBar(
        title: const Text("P L A Y L I S T"),
        backgroundColor: Colors.grey[900], // Dark grey app bar
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Add padding around the list
          child: Column(
            children: songs.map((song) {
              return Card(
                color: Colors.grey[850], // Darker card color
                margin: const EdgeInsets.symmetric(vertical: 8),
                elevation: 5, // Shadow effect for card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      song["image"]!, // Load image from assets
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover, // Ensure image fits within the bounds
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback in case the image doesn't load
                        return Icon(Icons.music_note, color: Colors.white, size: 60);
                      },
                    ),
                  ),
                  title: Text(
                    song["name"]!,
                    style: const TextStyle(
                      color: Colors.white, // White text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigate to Music Player Page when a song is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusicPlayerPage(song: song),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
