import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.grey, // Grey background for AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue, // Background color for the circle
              child: Text(
                'RD',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white, // Text color inside the CircleAvatar
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Rachit DAKSH', // Placeholder for name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
                        SizedBox(height: 20),
            Text(
              'rachitdaksh@gmail.com', // Placeholder for name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
                                    SizedBox(height: 20),
            Text(
              '9454545454', // Placeholder for name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}