import 'package:flutter/material.dart';
import 'package:youtube_music_basic/screen/explore_screen.dart';
import 'package:youtube_music_basic/screen/home.dart';
import 'package:youtube_music_basic/screen/library_music.dart';
import 'package:youtube_music_basic/screen/login_screen.dart';

void main() {
  // Config
  //
  runApp(const YoutubeMusicApp());
}

class YoutubeMusicApp extends StatelessWidget {
  const YoutubeMusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // This widget is the root of your application.

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/youtube_music_logo.png"),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg"),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(

        onDestinationSelected: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        selectedIndex: _currentPage,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(
                Icons.explore,
              ),
              label: "Explore"),
          NavigationDestination(
              icon: Icon(
                Icons.library_music,
              ),
              label: "Library")
        ],
      ),
      body: [
        HomeScreen(),
        ExploreScreen(),
        LibraryMusicScreen()
      ][_currentPage],
    );
  }
}
