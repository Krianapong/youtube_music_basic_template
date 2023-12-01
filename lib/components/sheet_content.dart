import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SheetContent extends StatefulWidget {
  const SheetContent(
      {Key? key,
      required this.imageURL,
      required this.musicName,
      required this.albumName})
      : super(key: key);

  final String imageURL;
  final String musicName;
  final String albumName;

  @override
  State<SheetContent> createState() => _SheetContentState();
}

class _SheetContentState extends State<SheetContent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    widget.imageURL,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.musicName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.albumName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: ListTile(
            title: Row(
              children: const [
                Icon(Icons.shuffle),
                SizedBox(
                  width: 18,
                ),
                Text("Shuffle Play")
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: ListTile(
            title: Row(
              children: const [
                Icon(Icons.playlist_play),
                SizedBox(
                  width: 18,
                ),
                Text("Play Next")
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: ListTile(
            title: Row(
              children: const [
                Icon(Icons.queue_music),
                SizedBox(
                  width: 18,
                ),
                Text("Add to Library")
              ],
            ),
          ),
        )
      ],
    );
  }
}
