import 'package:flutter/material.dart';

class ChannelsScreen extends StatelessWidget {
  const ChannelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Channels")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text("Tech News"),
            subtitle: Text("Latest updates"),
          ),
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text("School Updates"),
            subtitle: Text("Announcements"),
          ),
        ],
      ),
    );
  }
}
