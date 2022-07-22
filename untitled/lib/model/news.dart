import 'package:equatable/equatable.dart';

class News extends Equatable {
  final String title;
  final String text;

  const News({required this.title, required this.text});

  @override
  // TODO: implement props
  List<Object?> get props => [title, text];
}
