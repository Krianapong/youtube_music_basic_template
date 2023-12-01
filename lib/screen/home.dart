import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_music_basic/components/chip_list_view.dart';

import '../components/alabum_head.dart';
import '../components/music_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                child: ChipListView(
                  chipTitles: [
                    "Workout",
                    "Podcasts",
                    "Relax",
                    "Focus",
                    "Dancing"
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              // นำไปสร้างเป็น Reusable Widget or Components
              // ***
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New releases",
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: size.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // นำไปสร้างเป็น Reusable Widget or Components
                    // ***
                    MusicCard(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdGFEeaJ3XTRoFFvwXkeoJwiw-bf9syextZg&usqp=CAU",
                        musicName: "Music",
                        albumName: "Album"),

                    MusicCard(imageURL: "https://i.scdn.co/image/ab67616d0000b2736b14f70bed52b58376cdf951",
                        musicName: "Music",
                        albumName: "Album"),

                    MusicCard(imageURL: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Billie_Holiday%2C_Downbeat%2C_New_York%2C_N.Y.%2C_ca._Feb._1947_%28William_P._Gottlieb_04251%29.jpg",
                        musicName: "Music",
                        albumName: "Album"),

                    MusicCard(imageURL:"https://www.sounddd.shop/wp-content/uploads/2023/03/%E0%B9%81%E0%B8%99%E0%B8%B0%E0%B8%99%E0%B8%B3%E0%B9%81%E0%B8%AD%E0%B8%9E%E0%B8%9F%E0%B8%B1%E0%B8%87%E0%B9%80%E0%B8%9E%E0%B8%A5%E0%B8%87-1-1.webp",
                        musicName: "Music",
                        albumName: "Album"),

                    MusicCard(imageURL: "https://imgcache.joox.com/music/joox/photo_th_th/toplist_300/b/5/2d0c379e341096e31782353b725aabb5.jpg",
                        musicName: "Music",
                        albumName: "Album"),

                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
