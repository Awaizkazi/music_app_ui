import 'package:flutter/material.dart';

import '../models/playlist_model.dart';
import '../models/song_model.dart';
import 'section_header.dart';
import 'song_card.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    super.key,
    required this.playlists,
  });

  final Playlist playlists;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              playlists.imageUrl,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  playlists.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  playlists.title,
                  maxLines: 2,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}


