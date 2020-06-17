import 'package:meta/meta.dart';

@immutable
class AppState {
  final int pageNum;

  const AppState({this.pageNum});

  AppState copyWith({int pageNum}) {
    return new AppState(
      pageNum: pageNum ?? this.pageNum
    );
  }
}
