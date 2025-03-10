class NewsItem {
  final int id;
  final String title;
  final String imgUrl;
  final String category;
  final String author;
  final String time;

  NewsItem({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.category,
    required this.author,
    this.time = '8 minutes ago',
  });
}

List<NewsItem> news = [
  NewsItem(
    id: 1,
    title: 'this is a freaking title',
    imgUrl: 'https://2u.pw/q5X6d6fc',
    category: 'sports',
    author: 'CNN',
  ),
  NewsItem(
    id: 2,
    title: 'this is a very good title',
    imgUrl: 'https://2u.pw/kPMrr07t',
    category: 'medical',
    author: 'BCC',
  ),
  NewsItem(
    id: 3,
    title: 'this is a amazing title',
    imgUrl: 'https://2u.pw/meMWcAM5',
    category: 'social',
    author: 'HBO',
  ),
  NewsItem(
    id: 4,
    title: 'this is a great title',
    imgUrl: 'https://2u.pw/8eQKN0v0f',
    category: 'learning',
    author: 'NAT',
  ),
];
