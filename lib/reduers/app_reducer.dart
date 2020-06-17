import 'package:reddit_video_downloader/actions/actions.dart';
import 'package:reddit_video_downloader/models/app.dart';
import 'package:redux/redux.dart';

final appReducer = combineReducers<AppState>([
  TypedReducer<AppState, SwitchTabAction>(_switchTab)
]);

AppState _switchTab(AppState state, SwitchTabAction action) {
  return state.copyWith(pageNum: action.tabNum);
}
