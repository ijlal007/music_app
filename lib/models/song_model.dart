class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });
  static List<Song> songs = [
    Song(
      title: 'kyun',
      description: 'kyun',
      url:
          'assets/music/Kyun - Talha Anjum feat. Annural Khalid _ Prod. UMAIR (Official Audio).mp3',
      coverUrl:
          'assets/images/Kyun - Talha Anjum feat. Annural Khalid _ Prod. UMAIR (Official Audio).jpeg',
    ),
    Song(
      title: 'Calm Down',
      description: 'Calm Down',
      url:
          'assets/music/Rema, Selena Gomez - Calm Down (Official Music Video).mp3',
      coverUrl:
          'assets/images/Rema, Selena Gomez - Calm Down (Official Music Video).jpeg',
    ),
    Song(
      title: 'Summer High',
      description: 'Summer High',
      url: 'assets/music/SUMMER HIGH - AP DHILLON.mp3',
      coverUrl: 'assets/images/SUMMER HIGH - AP DHILLON.jpeg',
    )
  ];
}
