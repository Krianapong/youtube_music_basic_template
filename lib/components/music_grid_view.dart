import 'package:flutter/cupertino.dart';
import 'package:youtube_music_basic/components/card_grid_view.dart';

class MusicGridView extends StatefulWidget {
  const MusicGridView({Key? key}) : super(key: key);

  @override
  State<MusicGridView> createState() => _MusicGridViewState();
}

class _MusicGridViewState extends State<MusicGridView> {
  @override
  Widget build(BuildContext context) {
    return Text("สร้าง GridView ตรงนี้");
  }

  List<Widget> _cardGridViewList(int length) {
    return List<Widget>.generate(
        length,
        (index) => const CardGridView(
            imageURL:
                "https://www.unlockmen.com/wp-content/uploads/2023/06/ช่วงเวลาสีทอง.jpg"));
  }
}
