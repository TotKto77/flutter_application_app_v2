// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocEpisodes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult? Function(String error)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateBlocEpisodesInitial value) initial,
    required TResult Function(StateBlocEpisodesLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateEpisodesData value)? data,
    TResult? Function(StateEpisodesError value)? error,
    TResult? Function(StateBlocEpisodesInitial value)? initial,
    TResult? Function(StateBlocEpisodesLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateBlocEpisodesInitial value)? initial,
    TResult Function(StateBlocEpisodesLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocEpisodesCopyWith<$Res> {
  factory $StateBlocEpisodesCopyWith(
          StateBlocEpisodes value, $Res Function(StateBlocEpisodes) then) =
      _$StateBlocEpisodesCopyWithImpl<$Res, StateBlocEpisodes>;
}

/// @nodoc
class _$StateBlocEpisodesCopyWithImpl<$Res, $Val extends StateBlocEpisodes>
    implements $StateBlocEpisodesCopyWith<$Res> {
  _$StateBlocEpisodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StateEpisodesDataImplCopyWith<$Res> {
  factory _$$StateEpisodesDataImplCopyWith(_$StateEpisodesDataImpl value,
          $Res Function(_$StateEpisodesDataImpl) then) =
      __$$StateEpisodesDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Episode> data, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$StateEpisodesDataImplCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res, _$StateEpisodesDataImpl>
    implements _$$StateEpisodesDataImplCopyWith<$Res> {
  __$$StateEpisodesDataImplCopyWithImpl(_$StateEpisodesDataImpl _value,
      $Res Function(_$StateEpisodesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$StateEpisodesDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StateEpisodesDataImpl
    with DiagnosticableTreeMixin
    implements StateEpisodesData {
  const _$StateEpisodesDataImpl(
      {required final List<Episode> data,
      this.isLoading = false,
      this.errorMessage})
      : _data = data;

  final List<Episode> _data;
  @override
  List<Episode> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocEpisodes.data(data: $data, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateBlocEpisodes.data'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEpisodesDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateEpisodesDataImplCopyWith<_$StateEpisodesDataImpl> get copyWith =>
      __$$StateEpisodesDataImplCopyWithImpl<_$StateEpisodesDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult? Function(String error)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return data?.call(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateBlocEpisodesInitial value) initial,
    required TResult Function(StateBlocEpisodesLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateEpisodesData value)? data,
    TResult? Function(StateEpisodesError value)? error,
    TResult? Function(StateBlocEpisodesInitial value)? initial,
    TResult? Function(StateBlocEpisodesLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateBlocEpisodesInitial value)? initial,
    TResult Function(StateBlocEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateEpisodesData implements StateBlocEpisodes {
  const factory StateEpisodesData(
      {required final List<Episode> data,
      final bool isLoading,
      final String? errorMessage}) = _$StateEpisodesDataImpl;

  List<Episode> get data;
  bool get isLoading;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$StateEpisodesDataImplCopyWith<_$StateEpisodesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateEpisodesErrorImplCopyWith<$Res> {
  factory _$$StateEpisodesErrorImplCopyWith(_$StateEpisodesErrorImpl value,
          $Res Function(_$StateEpisodesErrorImpl) then) =
      __$$StateEpisodesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StateEpisodesErrorImplCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res, _$StateEpisodesErrorImpl>
    implements _$$StateEpisodesErrorImplCopyWith<$Res> {
  __$$StateEpisodesErrorImplCopyWithImpl(_$StateEpisodesErrorImpl _value,
      $Res Function(_$StateEpisodesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StateEpisodesErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateEpisodesErrorImpl
    with DiagnosticableTreeMixin
    implements StateEpisodesError {
  const _$StateEpisodesErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocEpisodes.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateBlocEpisodes.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEpisodesErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateEpisodesErrorImplCopyWith<_$StateEpisodesErrorImpl> get copyWith =>
      __$$StateEpisodesErrorImplCopyWithImpl<_$StateEpisodesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult? Function(String error)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateBlocEpisodesInitial value) initial,
    required TResult Function(StateBlocEpisodesLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateEpisodesData value)? data,
    TResult? Function(StateEpisodesError value)? error,
    TResult? Function(StateBlocEpisodesInitial value)? initial,
    TResult? Function(StateBlocEpisodesLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateBlocEpisodesInitial value)? initial,
    TResult Function(StateBlocEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateEpisodesError implements StateBlocEpisodes {
  const factory StateEpisodesError(final String error) =
      _$StateEpisodesErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StateEpisodesErrorImplCopyWith<_$StateEpisodesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateBlocEpisodesInitialImplCopyWith<$Res> {
  factory _$$StateBlocEpisodesInitialImplCopyWith(
          _$StateBlocEpisodesInitialImpl value,
          $Res Function(_$StateBlocEpisodesInitialImpl) then) =
      __$$StateBlocEpisodesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateBlocEpisodesInitialImplCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res,
        _$StateBlocEpisodesInitialImpl>
    implements _$$StateBlocEpisodesInitialImplCopyWith<$Res> {
  __$$StateBlocEpisodesInitialImplCopyWithImpl(
      _$StateBlocEpisodesInitialImpl _value,
      $Res Function(_$StateBlocEpisodesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateBlocEpisodesInitialImpl
    with DiagnosticableTreeMixin
    implements StateBlocEpisodesInitial {
  const _$StateBlocEpisodesInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocEpisodes.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateBlocEpisodes.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateBlocEpisodesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult? Function(String error)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateBlocEpisodesInitial value) initial,
    required TResult Function(StateBlocEpisodesLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateEpisodesData value)? data,
    TResult? Function(StateEpisodesError value)? error,
    TResult? Function(StateBlocEpisodesInitial value)? initial,
    TResult? Function(StateBlocEpisodesLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateBlocEpisodesInitial value)? initial,
    TResult Function(StateBlocEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateBlocEpisodesInitial implements StateBlocEpisodes {
  const factory StateBlocEpisodesInitial() = _$StateBlocEpisodesInitialImpl;
}

/// @nodoc
abstract class _$$StateBlocEpisodesLoadingImplCopyWith<$Res> {
  factory _$$StateBlocEpisodesLoadingImplCopyWith(
          _$StateBlocEpisodesLoadingImpl value,
          $Res Function(_$StateBlocEpisodesLoadingImpl) then) =
      __$$StateBlocEpisodesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateBlocEpisodesLoadingImplCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res,
        _$StateBlocEpisodesLoadingImpl>
    implements _$$StateBlocEpisodesLoadingImplCopyWith<$Res> {
  __$$StateBlocEpisodesLoadingImplCopyWithImpl(
      _$StateBlocEpisodesLoadingImpl _value,
      $Res Function(_$StateBlocEpisodesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateBlocEpisodesLoadingImpl
    with DiagnosticableTreeMixin
    implements StateBlocEpisodesLoading {
  const _$StateBlocEpisodesLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocEpisodes.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateBlocEpisodes.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateBlocEpisodesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult? Function(String error)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateBlocEpisodesInitial value) initial,
    required TResult Function(StateBlocEpisodesLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateEpisodesData value)? data,
    TResult? Function(StateEpisodesError value)? error,
    TResult? Function(StateBlocEpisodesInitial value)? initial,
    TResult? Function(StateBlocEpisodesLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateBlocEpisodesInitial value)? initial,
    TResult Function(StateBlocEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateBlocEpisodesLoading implements StateBlocEpisodes {
  const factory StateBlocEpisodesLoading() = _$StateBlocEpisodesLoadingImpl;
}
