import 'package:music_app_ui/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  static List<Playlist> playlists = [
    Playlist(
        title: 'Hip-Hop R&B Mix',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlwJTIwaG9wJTIwbXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Playlist(
        title: 'Rock & Roll',
        songs: Song.songs,
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1664302642672-d22412d44b1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cm9jayUyMGFuZCUyMHJvbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Playlist(
        title: 'Techno',
        songs: Song.songs,
        imageUrl: 'https://i.ytimg.com/vi/qGZGUXZT6_M/maxresdefault.jpg'),
    Playlist(
        title: 'Hip-Hop R&B Mix',
        songs: Song.songs,
        imageUrl:
            'https://cdn-profiles.tunein.com/s273493/images/logod.jpg?t=637940349250000000')
  ];
}
