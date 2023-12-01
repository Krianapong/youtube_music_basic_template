import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_music_basic/components/music_grid_view.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late TabController _tapController;

  // ประกาศตัวแปร TabController และ with TickerProviderStateMixin class
  // **


  // ประกาศ method ชื่อว่า initState
  // **

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ใช้ TabBar และ Tab ตรงนี้"),
      ),
      body: SafeArea(
        child: Text("ใช้ TabBarView ตรงนี้"),
      ),
    );
  }
}
