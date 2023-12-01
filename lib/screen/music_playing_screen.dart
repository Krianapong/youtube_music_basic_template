import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPlayingScreen extends StatefulWidget {
  const MusicPlayingScreen({
    Key? key,
    required this.imageURL,
    required this.musicName,
  }) : super(key: key);

  final String imageURL;
  final String musicName;

  @override
  State<MusicPlayingScreen> createState() => _MusicPlayingScreenState();
}

class _MusicPlayingScreenState extends State<MusicPlayingScreen> {
  double _currentSlideValue = 0;
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    widget.imageURL,
                    width: size.width * 0.8,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  width: size.width * 0.8,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      widget.musicName,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  child: Column(
                    children: [
                      Slider(
                        value: _currentSlideValue,
                        secondaryTrackValue: 2.5,
                        max: 3.46,
                        onChanged: (double value) {
                          setState(() {
                            _currentSlideValue = value;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${_currentSlideValue.toStringAsFixed(2)}"),
                          Text("3.46")
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 40,
                        Icons.skip_previous,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
                      icon:  Icon(
                        size: 70,
                        (isPlaying) ? Icons.play_circle : Icons.pause_circle,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 40,
                        Icons.skip_next,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
