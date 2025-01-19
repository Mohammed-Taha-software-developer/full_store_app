// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeAppChange,
    required TResult Function(Locale local) LAngAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeAppChange,
    TResult? Function(Locale local)? LAngAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeAppChange,
    TResult Function(Locale local)? LAngAppChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeAppChangeState value) themeAppChange,
    required TResult Function(LangAppChangeState value) LAngAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeAppChangeState value)? themeAppChange,
    TResult? Function(LangAppChangeState value)? LAngAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeAppChangeState value)? themeAppChange,
    TResult Function(LangAppChangeState value)? LAngAppChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeAppChange,
    required TResult Function(Locale local) LAngAppChange,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeAppChange,
    TResult? Function(Locale local)? LAngAppChange,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeAppChange,
    TResult Function(Locale local)? LAngAppChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeAppChangeState value) themeAppChange,
    required TResult Function(LangAppChangeState value) LAngAppChange,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeAppChangeState value)? themeAppChange,
    TResult? Function(LangAppChangeState value)? LAngAppChange,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeAppChangeState value)? themeAppChange,
    TResult Function(LangAppChangeState value)? LAngAppChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeAppChangeStateImplCopyWith<$Res> {
  factory _$$ThemeAppChangeStateImplCopyWith(_$ThemeAppChangeStateImpl value,
          $Res Function(_$ThemeAppChangeStateImpl) then) =
      __$$ThemeAppChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeAppChangeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ThemeAppChangeStateImpl>
    implements _$$ThemeAppChangeStateImplCopyWith<$Res> {
  __$$ThemeAppChangeStateImplCopyWithImpl(_$ThemeAppChangeStateImpl _value,
      $Res Function(_$ThemeAppChangeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ThemeAppChangeStateImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeAppChangeStateImpl implements ThemeAppChangeState {
  const _$ThemeAppChangeStateImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState.themeAppChange(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeAppChangeStateImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeAppChangeStateImplCopyWith<_$ThemeAppChangeStateImpl> get copyWith =>
      __$$ThemeAppChangeStateImplCopyWithImpl<_$ThemeAppChangeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeAppChange,
    required TResult Function(Locale local) LAngAppChange,
  }) {
    return themeAppChange(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeAppChange,
    TResult? Function(Locale local)? LAngAppChange,
  }) {
    return themeAppChange?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeAppChange,
    TResult Function(Locale local)? LAngAppChange,
    required TResult orElse(),
  }) {
    if (themeAppChange != null) {
      return themeAppChange(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeAppChangeState value) themeAppChange,
    required TResult Function(LangAppChangeState value) LAngAppChange,
  }) {
    return themeAppChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeAppChangeState value)? themeAppChange,
    TResult? Function(LangAppChangeState value)? LAngAppChange,
  }) {
    return themeAppChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeAppChangeState value)? themeAppChange,
    TResult Function(LangAppChangeState value)? LAngAppChange,
    required TResult orElse(),
  }) {
    if (themeAppChange != null) {
      return themeAppChange(this);
    }
    return orElse();
  }
}

abstract class ThemeAppChangeState implements AppState {
  const factory ThemeAppChangeState({required final bool isDark}) =
      _$ThemeAppChangeStateImpl;

  bool get isDark;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeAppChangeStateImplCopyWith<_$ThemeAppChangeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LangAppChangeStateImplCopyWith<$Res> {
  factory _$$LangAppChangeStateImplCopyWith(_$LangAppChangeStateImpl value,
          $Res Function(_$LangAppChangeStateImpl) then) =
      __$$LangAppChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale local});
}

/// @nodoc
class __$$LangAppChangeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LangAppChangeStateImpl>
    implements _$$LangAppChangeStateImplCopyWith<$Res> {
  __$$LangAppChangeStateImplCopyWithImpl(_$LangAppChangeStateImpl _value,
      $Res Function(_$LangAppChangeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = null,
  }) {
    return _then(_$LangAppChangeStateImpl(
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LangAppChangeStateImpl implements LangAppChangeState {
  const _$LangAppChangeStateImpl({required this.local});

  @override
  final Locale local;

  @override
  String toString() {
    return 'AppState.LAngAppChange(local: $local)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LangAppChangeStateImpl &&
            (identical(other.local, local) || other.local == local));
  }

  @override
  int get hashCode => Object.hash(runtimeType, local);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LangAppChangeStateImplCopyWith<_$LangAppChangeStateImpl> get copyWith =>
      __$$LangAppChangeStateImplCopyWithImpl<_$LangAppChangeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeAppChange,
    required TResult Function(Locale local) LAngAppChange,
  }) {
    return LAngAppChange(local);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeAppChange,
    TResult? Function(Locale local)? LAngAppChange,
  }) {
    return LAngAppChange?.call(local);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeAppChange,
    TResult Function(Locale local)? LAngAppChange,
    required TResult orElse(),
  }) {
    if (LAngAppChange != null) {
      return LAngAppChange(local);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeAppChangeState value) themeAppChange,
    required TResult Function(LangAppChangeState value) LAngAppChange,
  }) {
    return LAngAppChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeAppChangeState value)? themeAppChange,
    TResult? Function(LangAppChangeState value)? LAngAppChange,
  }) {
    return LAngAppChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeAppChangeState value)? themeAppChange,
    TResult Function(LangAppChangeState value)? LAngAppChange,
    required TResult orElse(),
  }) {
    if (LAngAppChange != null) {
      return LAngAppChange(this);
    }
    return orElse();
  }
}

abstract class LangAppChangeState implements AppState {
  const factory LangAppChangeState({required final Locale local}) =
      _$LangAppChangeStateImpl;

  Locale get local;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LangAppChangeStateImplCopyWith<_$LangAppChangeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
