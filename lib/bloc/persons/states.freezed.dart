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
mixin _$StateBlocPersons {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<Person> data) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Person> data)? data,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Person> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatePersonsInitial value) initial,
    required TResult Function(StateBlocPersonsLoading value) loding,
    required TResult Function(StatePersonsData value) data,
    required TResult Function(StatePersonsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatePersonsInitial value)? initial,
    TResult? Function(StateBlocPersonsLoading value)? loding,
    TResult? Function(StatePersonsData value)? data,
    TResult? Function(StatePersonsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatePersonsInitial value)? initial,
    TResult Function(StateBlocPersonsLoading value)? loding,
    TResult Function(StatePersonsData value)? data,
    TResult Function(StatePersonsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocPersonsCopyWith<$Res> {
  factory $StateBlocPersonsCopyWith(
          StateBlocPersons value, $Res Function(StateBlocPersons) then) =
      _$StateBlocPersonsCopyWithImpl<$Res, StateBlocPersons>;
}

/// @nodoc
class _$StateBlocPersonsCopyWithImpl<$Res, $Val extends StateBlocPersons>
    implements $StateBlocPersonsCopyWith<$Res> {
  _$StateBlocPersonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatePersonsInitialImplCopyWith<$Res> {
  factory _$$StatePersonsInitialImplCopyWith(_$StatePersonsInitialImpl value,
          $Res Function(_$StatePersonsInitialImpl) then) =
      __$$StatePersonsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatePersonsInitialImplCopyWithImpl<$Res>
    extends _$StateBlocPersonsCopyWithImpl<$Res, _$StatePersonsInitialImpl>
    implements _$$StatePersonsInitialImplCopyWith<$Res> {
  __$$StatePersonsInitialImplCopyWithImpl(_$StatePersonsInitialImpl _value,
      $Res Function(_$StatePersonsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatePersonsInitialImpl
    with DiagnosticableTreeMixin
    implements StatePersonsInitial {
  const _$StatePersonsInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocPersons.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateBlocPersons.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatePersonsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<Person> data) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Person> data)? data,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Person> data)? data,
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
    required TResult Function(StatePersonsInitial value) initial,
    required TResult Function(StateBlocPersonsLoading value) loding,
    required TResult Function(StatePersonsData value) data,
    required TResult Function(StatePersonsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatePersonsInitial value)? initial,
    TResult? Function(StateBlocPersonsLoading value)? loding,
    TResult? Function(StatePersonsData value)? data,
    TResult? Function(StatePersonsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatePersonsInitial value)? initial,
    TResult Function(StateBlocPersonsLoading value)? loding,
    TResult Function(StatePersonsData value)? data,
    TResult Function(StatePersonsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatePersonsInitial implements StateBlocPersons {
  const factory StatePersonsInitial() = _$StatePersonsInitialImpl;
}

/// @nodoc
abstract class _$$StateBlocPersonsLoadingImplCopyWith<$Res> {
  factory _$$StateBlocPersonsLoadingImplCopyWith(
          _$StateBlocPersonsLoadingImpl value,
          $Res Function(_$StateBlocPersonsLoadingImpl) then) =
      __$$StateBlocPersonsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateBlocPersonsLoadingImplCopyWithImpl<$Res>
    extends _$StateBlocPersonsCopyWithImpl<$Res, _$StateBlocPersonsLoadingImpl>
    implements _$$StateBlocPersonsLoadingImplCopyWith<$Res> {
  __$$StateBlocPersonsLoadingImplCopyWithImpl(
      _$StateBlocPersonsLoadingImpl _value,
      $Res Function(_$StateBlocPersonsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateBlocPersonsLoadingImpl
    with DiagnosticableTreeMixin
    implements StateBlocPersonsLoading {
  const _$StateBlocPersonsLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocPersons.loding()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateBlocPersons.loding'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateBlocPersonsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<Person> data) data,
    required TResult Function(String error) error,
  }) {
    return loding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Person> data)? data,
    TResult? Function(String error)? error,
  }) {
    return loding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Person> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loding != null) {
      return loding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatePersonsInitial value) initial,
    required TResult Function(StateBlocPersonsLoading value) loding,
    required TResult Function(StatePersonsData value) data,
    required TResult Function(StatePersonsError value) error,
  }) {
    return loding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatePersonsInitial value)? initial,
    TResult? Function(StateBlocPersonsLoading value)? loding,
    TResult? Function(StatePersonsData value)? data,
    TResult? Function(StatePersonsError value)? error,
  }) {
    return loding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatePersonsInitial value)? initial,
    TResult Function(StateBlocPersonsLoading value)? loding,
    TResult Function(StatePersonsData value)? data,
    TResult Function(StatePersonsError value)? error,
    required TResult orElse(),
  }) {
    if (loding != null) {
      return loding(this);
    }
    return orElse();
  }
}

abstract class StateBlocPersonsLoading implements StateBlocPersons {
  const factory StateBlocPersonsLoading() = _$StateBlocPersonsLoadingImpl;
}

/// @nodoc
abstract class _$$StatePersonsDataImplCopyWith<$Res> {
  factory _$$StatePersonsDataImplCopyWith(_$StatePersonsDataImpl value,
          $Res Function(_$StatePersonsDataImpl) then) =
      __$$StatePersonsDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Person> data});
}

/// @nodoc
class __$$StatePersonsDataImplCopyWithImpl<$Res>
    extends _$StateBlocPersonsCopyWithImpl<$Res, _$StatePersonsDataImpl>
    implements _$$StatePersonsDataImplCopyWith<$Res> {
  __$$StatePersonsDataImplCopyWithImpl(_$StatePersonsDataImpl _value,
      $Res Function(_$StatePersonsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StatePersonsDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc

class _$StatePersonsDataImpl
    with DiagnosticableTreeMixin
    implements StatePersonsData {
  const _$StatePersonsDataImpl({required final List<Person> data})
      : _data = data;

  final List<Person> _data;
  @override
  List<Person> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocPersons.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateBlocPersons.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatePersonsDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatePersonsDataImplCopyWith<_$StatePersonsDataImpl> get copyWith =>
      __$$StatePersonsDataImplCopyWithImpl<_$StatePersonsDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<Person> data) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Person> data)? data,
    TResult? Function(String error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Person> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatePersonsInitial value) initial,
    required TResult Function(StateBlocPersonsLoading value) loding,
    required TResult Function(StatePersonsData value) data,
    required TResult Function(StatePersonsError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatePersonsInitial value)? initial,
    TResult? Function(StateBlocPersonsLoading value)? loding,
    TResult? Function(StatePersonsData value)? data,
    TResult? Function(StatePersonsError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatePersonsInitial value)? initial,
    TResult Function(StateBlocPersonsLoading value)? loding,
    TResult Function(StatePersonsData value)? data,
    TResult Function(StatePersonsError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StatePersonsData implements StateBlocPersons {
  const factory StatePersonsData({required final List<Person> data}) =
      _$StatePersonsDataImpl;

  List<Person> get data;
  @JsonKey(ignore: true)
  _$$StatePersonsDataImplCopyWith<_$StatePersonsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatePersonsErrorImplCopyWith<$Res> {
  factory _$$StatePersonsErrorImplCopyWith(_$StatePersonsErrorImpl value,
          $Res Function(_$StatePersonsErrorImpl) then) =
      __$$StatePersonsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StatePersonsErrorImplCopyWithImpl<$Res>
    extends _$StateBlocPersonsCopyWithImpl<$Res, _$StatePersonsErrorImpl>
    implements _$$StatePersonsErrorImplCopyWith<$Res> {
  __$$StatePersonsErrorImplCopyWithImpl(_$StatePersonsErrorImpl _value,
      $Res Function(_$StatePersonsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StatePersonsErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatePersonsErrorImpl
    with DiagnosticableTreeMixin
    implements StatePersonsError {
  const _$StatePersonsErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocPersons.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateBlocPersons.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatePersonsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatePersonsErrorImplCopyWith<_$StatePersonsErrorImpl> get copyWith =>
      __$$StatePersonsErrorImplCopyWithImpl<_$StatePersonsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<Person> data) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Person> data)? data,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Person> data)? data,
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
    required TResult Function(StatePersonsInitial value) initial,
    required TResult Function(StateBlocPersonsLoading value) loding,
    required TResult Function(StatePersonsData value) data,
    required TResult Function(StatePersonsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatePersonsInitial value)? initial,
    TResult? Function(StateBlocPersonsLoading value)? loding,
    TResult? Function(StatePersonsData value)? data,
    TResult? Function(StatePersonsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatePersonsInitial value)? initial,
    TResult Function(StateBlocPersonsLoading value)? loding,
    TResult Function(StatePersonsData value)? data,
    TResult Function(StatePersonsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StatePersonsError implements StateBlocPersons {
  const factory StatePersonsError(final String error) = _$StatePersonsErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StatePersonsErrorImplCopyWith<_$StatePersonsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
