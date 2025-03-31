import 'package:flutter/material.dart';
import 'package:ss2025/colors.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const DetailScreen({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.secondary, // Personaliza el color si lo deseas
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: 400,
                height: 280,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}