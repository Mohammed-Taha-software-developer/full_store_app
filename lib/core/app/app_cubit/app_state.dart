part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;

  const factory AppState.themeAppChange({required bool isDark}) =ThemeAppChangeState;
  const factory AppState.langAppChange({required Locale local}) =LangAppChangeState;
}
