import 'package:bloc/bloc.dart';
import 'package:get_it_learning/cubit/news_state.dart';
import 'package:get_it_learning/repository/i_news_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this._newsRepository) : super(NewsInitState());
  final INewsRepository _newsRepository;

  Future<void> getNews() async {
    emit(NewsLoadingState());
    final news = await _newsRepository.getById();
    emit(NewsReadyState(news));
  }
}
