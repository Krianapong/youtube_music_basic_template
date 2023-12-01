import 'package:flutter/material.dart';
import 'package:youtube_music_basic/components/sheet_content.dart';
import 'package:youtube_music_basic/screen/music_playing_screen.dart';

class MusicCard extends StatefulWidget {
  const MusicCard({
    Key? key,
    required this.imageURL,
    required this.musicName,
    required this.albumName,
  }) : super(key: key);

  final String imageURL;
  final String musicName;
  final String albumName;

  @override
  State<MusicCard> createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      // เรียกใช้ onLongPress
      // ***
      onLongPress: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => SheetContent(imageURL: widget.imageURL,
                musicName: widget.musicName,
                albumName: widget.albumName,
            ),
           );
      },
      onTap: () {
        // เรียกใช้ Navigator.push และส่งผ่านค่า Params
        // ***
        print("nam");
      },
      child: SizedBox(
        height: 290,
        width: 220,
        child: Card(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                child: Image.network(
                 widget.imageURL,
                  height: 160,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      widget.musicName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      widget.albumName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
