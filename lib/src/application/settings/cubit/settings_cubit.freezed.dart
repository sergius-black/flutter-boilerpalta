// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  SettingsInitial initial() {
    return const SettingsInitial();
  }

  SettingsLoaded loaded(ThemeMode themeMode, Locale locale) {
    return SettingsLoaded(
      themeMode,
      locale,
    );
  }

  SettingsSaving saving() {
    return const SettingsSaving();
  }

  SettingsError error(String error) {
    return SettingsError(
      error,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, Locale locale) loaded,
    required TResult Function() saving,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsSaving value) saving,
    required TResult Function(SettingsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class $SettingsInitialCopyWith<$Res> {
  factory $SettingsInitialCopyWith(
          SettingsInitial value, $Res Function(SettingsInitial) then) =
      _$SettingsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsInitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsInitialCopyWith<$Res> {
  _$SettingsInitialCopyWithImpl(
      SettingsInitial _value, $Res Function(SettingsInitial) _then)
      : super(_value, (v) => _then(v as SettingsInitial));

  @override
  SettingsInitial get _value => super._value as SettingsInitial;
}

/// @nodoc

class _$SettingsInitial implements SettingsInitial {
  const _$SettingsInitial();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, Locale locale) loaded,
    required TResult Function() saving,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
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
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsSaving value) saving,
    required TResult Function(SettingsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitial implements SettingsState {
  const factory SettingsInitial() = _$SettingsInitial;
}

/// @nodoc
abstract class $SettingsLoadedCopyWith<$Res> {
  factory $SettingsLoadedCopyWith(
          SettingsLoaded value, $Res Function(SettingsLoaded) then) =
      _$SettingsLoadedCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, Locale locale});
}

/// @nodoc
class _$SettingsLoadedCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsLoadedCopyWith<$Res> {
  _$SettingsLoadedCopyWithImpl(
      SettingsLoaded _value, $Res Function(SettingsLoaded) _then)
      : super(_value, (v) => _then(v as SettingsLoaded));

  @override
  SettingsLoaded get _value => super._value as SettingsLoaded;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(SettingsLoaded(
      themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$SettingsLoaded implements SettingsLoaded {
  const _$SettingsLoaded(this.themeMode, this.locale);

  @override
  final ThemeMode themeMode;
  @override
  final Locale locale;

  @override
  String toString() {
    return 'SettingsState.loaded(themeMode: $themeMode, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsLoaded &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeMode) ^
      const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $SettingsLoadedCopyWith<SettingsLoaded> get copyWith =>
      _$SettingsLoadedCopyWithImpl<SettingsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, Locale locale) loaded,
    required TResult Function() saving,
    required TResult Function(String error) error,
  }) {
    return loaded(themeMode, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(themeMode, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(themeMode, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsSaving value) saving,
    required TResult Function(SettingsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsLoaded implements SettingsState {
  const factory SettingsLoaded(ThemeMode themeMode, Locale locale) =
      _$SettingsLoaded;

  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsLoadedCopyWith<SettingsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsSavingCopyWith<$Res> {
  factory $SettingsSavingCopyWith(
          SettingsSaving value, $Res Function(SettingsSaving) then) =
      _$SettingsSavingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsSavingCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsSavingCopyWith<$Res> {
  _$SettingsSavingCopyWithImpl(
      SettingsSaving _value, $Res Function(SettingsSaving) _then)
      : super(_value, (v) => _then(v as SettingsSaving));

  @override
  SettingsSaving get _value => super._value as SettingsSaving;
}

/// @nodoc

class _$SettingsSaving implements SettingsSaving {
  const _$SettingsSaving();

  @override
  String toString() {
    return 'SettingsState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsSaving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, Locale locale) loaded,
    required TResult Function() saving,
    required TResult Function(String error) error,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsSaving value) saving,
    required TResult Function(SettingsError value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class SettingsSaving implements SettingsState {
  const factory SettingsSaving() = _$SettingsSaving;
}

/// @nodoc
abstract class $SettingsErrorCopyWith<$Res> {
  factory $SettingsErrorCopyWith(
          SettingsError value, $Res Function(SettingsError) then) =
      _$SettingsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$SettingsErrorCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsErrorCopyWith<$Res> {
  _$SettingsErrorCopyWithImpl(
      SettingsError _value, $Res Function(SettingsError) _then)
      : super(_value, (v) => _then(v as SettingsError));

  @override
  SettingsError get _value => super._value as SettingsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SettingsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsError implements SettingsError {
  const _$SettingsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SettingsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SettingsErrorCopyWith<SettingsError> get copyWith =>
      _$SettingsErrorCopyWithImpl<SettingsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, Locale locale) loaded,
    required TResult Function() saving,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, Locale locale)? loaded,
    TResult Function()? saving,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsSaving value) saving,
    required TResult Function(SettingsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsSaving value)? saving,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SettingsError implements SettingsState {
  const factory SettingsError(String error) = _$SettingsError;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsErrorCopyWith<SettingsError> get copyWith =>
      throw _privateConstructorUsedError;
}
