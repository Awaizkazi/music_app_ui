class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: 'Maan meri Jaan',
      description: 'Maan Meri Jaan',
      url: 'assets/music/mmj.mp3',
      coverUrl: 'assets/images/mmj.jpg',
    ),
    Song(
      title: 'Pathaan',
      description: 'Pathaan',
      url: 'assets/music/Pathaan.mp3',
      coverUrl: 'assets/images/pathaan.png',
    ),
    Song(
      title: 'Kesariya',
      description: 'Kesariya',
      url: 'assets/music/kesariya.mp3',
      coverUrl: 'assets/images/kseariya.png',
    ),
  ];
}
