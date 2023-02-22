import 'package:flutter/material.dart';

import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.songs,
  });

  final Song songs;

  @override
  Widget build(BuildContext context) {
    var index;
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(songs.coverUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
