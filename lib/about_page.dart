import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const Icon(
              Icons.content_cut,
              size: 100,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            const Text(
              "Four’Az BARBER",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Four’Az BARBER provides professional haircuts, fades, beard trimming, and grooming services. Our mission is to deliver quality haircuts with excellent customer service in a comfortable and modern environment.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Professional Service"),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.people),
                title: Text("Friendly Staff"),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.workspace_premium),
                title: Text("Quality Haircuts"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}