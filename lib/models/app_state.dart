import 'package:meta/meta.dart';
import 'package:reddit_video_downloader/models/app.dart' as app;
import 'package:reddit_video_downloader/models/download.dart';

@immutable
class AppState {
  final Download download;
  final app.AppState appState;

  AppState({this.download = const Download(), this.appState = const app.AppState()});

  factory AppState.initial() => AppState(
      download: new Download(isDownloading: false, status: 'Not downloading'),
      appState: new app.AppState(pageNum: 0)
  );

  AppState copyWith({Download download, app.AppState appState}) {
    return AppState(
        download: download ?? this.download,
        appState: appState ?? this.appState
    );
  }
}
