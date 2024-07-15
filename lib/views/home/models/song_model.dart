class Song {
  final String id;
  final String title;
  final String description;
  final url;
  final String coverUrl;

  Song(
      {required this.id,
      required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
        id: '1',
        title: 'Noi Nay Co Anh',
        description: 'Son Tung - MTP',
        url: 'assets/music/noinaycoanh.mp3',
        coverUrl: 'assets/images/noinaycoanh.jpg'),
    Song(
        id: '2',
        title: 'Lac Troi',
        description: 'Son Tung - MTP',
        url: 'assets/music/lactroi.mp3',
        coverUrl: 'assets/images/lactroi.jpg'),
  ];
}
