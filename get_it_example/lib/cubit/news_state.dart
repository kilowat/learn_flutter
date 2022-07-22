import 'package:equatable/equatable.dart';

import '../model/news.dart';

abstract class NewsState extends Equatable {}

class NewsInitState extends NewsState {
  @override
  // TODO: implement props
  List<Object?> get props => ['news_init'];
}

class NewsLoadingState extends NewsState {
  @override
  // TODO: implement props
  List<Object?> get props => ['news_loading'];
}

class NewsReadyState extends NewsState {
  final News news;

  NewsReadyState(this.news);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
