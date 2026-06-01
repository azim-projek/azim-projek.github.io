import 'package:flutter/material.dart';

class HoursPage extends StatelessWidget {
  const HoursPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Working Hours"),
      ),
      body: ListView(
        children: const [

          ListTile(
            title: Text("Monday"),
            trailing: Text("12 AM - 12 PM"),
          ),

          ListTile(
            title: Text("Tuesday"),
            trailing: Text("12 AM - 12 PM"),
          ),

          ListTile(
            title: Text("Wednesday"),
            trailing: Text("12 AM - 12 PM"),
          ),

          ListTile(
            title: Text("Thursday"),
            trailing: Text("12 AM - 12 PM"),
          ),

          ListTile(
            title: Text("Friday"),
            trailing: Text("3 PM - 12 PM"),
          ),

          ListTile(
            title: Text("Saturday"),
            trailing: Text("12 AM - 12 PM"),
          ),

          ListTile(
            title: Text("Sunday"),
            trailing: Text("12 AM - 12 PM"),
          ),
        ],
      ),
    );
  }
}