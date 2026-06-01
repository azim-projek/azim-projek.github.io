import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [

          Text(
            "SERVICES",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.content_cut),
              title: Text("Adult Professional Haircut"),
              trailing: Text("RM17"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.face),
              title: Text("Normal Haircut"),
              trailing: Text("RM15"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.child_care),
              title: Text("Kids Haircut"),
              trailing: Text("RM10"),
            ),
          ),
        ],
      ),
    );
  }
}