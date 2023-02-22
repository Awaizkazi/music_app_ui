import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/home_screen.dart';
import 'package:music_app_ui/screens/song_screen.dart';
import 'screens/playlist_screen.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/song', page: () => SongScreen()),
        GetPage(name: '/playlist', page: () => PlayListScreen()),
        GetPage(name: '/', page: () => HomeScreen()),
      ],
    );
  }
}


/*
https://www.youtube.com/watch?v=12ktVNkKw5w
2:00 Se Dekna hai
*/