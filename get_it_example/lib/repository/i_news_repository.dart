import 'package:injectable/injectable.dart';

import '../model/news.dart';

abstract class INewsRepository {
  Future<News> getById();
}

@Injectable(as: INewsRepository)
class NewsRepository implements INewsRepository {
  @override
  Future<News> getById() {
    return Future.delayed(const Duration(seconds: 1), () {
      return News(title: 'news', text: 'news text');
    });
  }
}
