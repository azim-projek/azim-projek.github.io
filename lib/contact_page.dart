import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const Icon(
              Icons.store,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 20),

            const Text(
              "Four’Az BARBER",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              subtitle: Text("011-2626 1756"),
            ),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("norazemi71@gmail.com"),
            ),

            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Address"),
              subtitle: Text("Lot 42442, Jln Sg Soi, Kampung Kempadang, 25150 Kuantan, Pahang"),
            ),

            const ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Working Hours"),
              subtitle: Text("Daily: 12 AM - 12 PM"),
            ),
          ],
        ),
      ),
    );
  }
}