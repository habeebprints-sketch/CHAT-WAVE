
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Status")),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(),
            title: Text("John Doe"),
            subtitle: Text("Today 10:30 AM"),
          ),
        ],
      ),
    );
  }
}
