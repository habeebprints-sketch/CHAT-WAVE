import 'package:flutter/material.dart';
import 'chats_screen.dart';
import 'status_screen.dart';
import 'channels_screen.dart';
import 'podcasts_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = const [
    ChatsScreen(),
    StatusScreen(),
    ChannelsScreen(),
    PodcastsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts),
            label: "Podcasts",
          ),
        ],
      ),
    );
  }
}
