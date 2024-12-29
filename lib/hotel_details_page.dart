import 'package:flutter/material.dart';

class HotelDetailsPage extends StatelessWidget {
  final String name;
  final String category;
  final String location;
  final String openTime;
  final String closeTime;
  final double rating;

  HotelDetailsPage({
    required this.name,
    required this.category,
    required this.location,
    required this.openTime,
    required this.closeTime,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/300x150'),
            SizedBox(height: 16),
            Text('Category: $category', style: TextStyle(fontSize: 18)),
            Text('Location: $location', style: TextStyle(fontSize: 18)),
            Text('Open Time: $openTime', style: TextStyle(fontSize: 18)),
            Text('Close Time: $closeTime', style: TextStyle(fontSize: 18)),
            Text('Rating: $rating', style: TextStyle(fontSize: 18)),
            // Add more details or menu items here
          ],
        ),
      ),
    );
  }
}