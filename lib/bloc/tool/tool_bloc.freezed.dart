// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tool_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToolEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amountStr) lendTool,
    required TResult Function() addTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amountStr)? lendTool,
    TResult? Function()? addTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amountStr)? lendTool,
    TResult Function()? addTools,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendTool value) lendTool,
    required TResult Function(AddTools value) addTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LendTool value)? lendTool,
    TResult? Function(AddTools value)? addTools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendTool value)? lendTool,
    TResult Function(AddTools value)? addTools,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolEventCopyWith<$Res> {
  factory $ToolEventCopyWith(ToolEvent value, $Res Function(ToolEvent) then) =
      _$ToolEventCopyWithImpl<$Res, ToolEvent>;
}

/// @nodoc
class _$ToolEventCopyWithImpl<$Res, $Val extends ToolEvent>
    implements $ToolEventCopyWith<$Res> {
  _$ToolEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LendToolImplCopyWith<$Res> {
  factory _$$LendToolImplCopyWith(
          _$LendToolImpl value, $Res Function(_$LendToolImpl) then) =
      __$$LendToolImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amountStr});
}

/// @nodoc
class __$$LendToolImplCopyWithImpl<$Res>
    extends _$ToolEventCopyWithImpl<$Res, _$LendToolImpl>
    implements _$$LendToolImplCopyWith<$Res> {
  __$$LendToolImplCopyWithImpl(
      _$LendToolImpl _value, $Res Function(_$LendToolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountStr = null,
  }) {
    return _then(_$LendToolImpl(
      null == amountStr
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LendToolImpl implements LendTool {
  const _$LendToolImpl(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'ToolEvent.lendTool(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LendToolImpl &&
            (identical(other.amountStr, amountStr) ||
                other.amountStr == amountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LendToolImplCopyWith<_$LendToolImpl> get copyWith =>
      __$$LendToolImplCopyWithImpl<_$LendToolImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amountStr) lendTool,
    required TResult Function() addTools,
  }) {
    return lendTool(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amountStr)? lendTool,
    TResult? Function()? addTools,
  }) {
    return lendTool?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amountStr)? lendTool,
    TResult Function()? addTools,
    required TResult orElse(),
  }) {
    if (lendTool != null) {
      return lendTool(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendTool value) lendTool,
    required TResult Function(AddTools value) addTools,
  }) {
    return lendTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LendTool value)? lendTool,
    TResult? Function(AddTools value)? addTools,
  }) {
    return lendTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendTool value)? lendTool,
    TResult Function(AddTools value)? addTools,
    required TResult orElse(),
  }) {
    if (lendTool != null) {
      return lendTool(this);
    }
    return orElse();
  }
}

abstract class LendTool implements ToolEvent {
  const factory LendTool(final String amountStr) = _$LendToolImpl;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$LendToolImplCopyWith<_$LendToolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToolsImplCopyWith<$Res> {
  factory _$$AddToolsImplCopyWith(
          _$AddToolsImpl value, $Res Function(_$AddToolsImpl) then) =
      __$$AddToolsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToolsImplCopyWithImpl<$Res>
    extends _$ToolEventCopyWithImpl<$Res, _$AddToolsImpl>
    implements _$$AddToolsImplCopyWith<$Res> {
  __$$AddToolsImplCopyWithImpl(
      _$AddToolsImpl _value, $Res Function(_$AddToolsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddToolsImpl implements AddTools {
  const _$AddToolsImpl();

  @override
  String toString() {
    return 'ToolEvent.addTools()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToolsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amountStr) lendTool,
    required TResult Function() addTools,
  }) {
    return addTools();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amountStr)? lendTool,
    TResult? Function()? addTools,
  }) {
    return addTools?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amountStr)? lendTool,
    TResult Function()? addTools,
    required TResult orElse(),
  }) {
    if (addTools != null) {
      return addTools();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendTool value) lendTool,
    required TResult Function(AddTools value) addTools,
  }) {
    return addTools(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LendTool value)? lendTool,
    TResult? Function(AddTools value)? addTools,
  }) {
    return addTools?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendTool value)? lendTool,
    TResult Function(AddTools value)? addTools,
    required TResult orElse(),
  }) {
    if (addTools != null) {
      return addTools(this);
    }
    return orElse();
  }
}

abstract class AddTools implements ToolEvent {
  const factory AddTools() = _$AddToolsImpl;
}

/// @nodoc
mixin _$ToolState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onBorrowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onBorrowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onBorrowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OnBorrowed value) onBorrowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OnBorrowed value)? onBorrowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OnBorrowed value)? onBorrowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolStateCopyWith<$Res> {
  factory $ToolStateCopyWith(ToolState value, $Res Function(ToolState) then) =
      _$ToolStateCopyWithImpl<$Res, ToolState>;
}

/// @nodoc
class _$ToolStateCopyWithImpl<$Res, $Val extends ToolState>
    implements $ToolStateCopyWith<$Res> {
  _$ToolStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ToolStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ToolState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onBorrowed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onBorrowed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onBorrowed,
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
    required TResult Function(Initial value) initial,
    required TResult Function(OnBorrowed value) onBorrowed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OnBorrowed value)? onBorrowed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OnBorrowed value)? onBorrowed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ToolState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnBorrowedImplCopyWith<$Res> {
  factory _$$OnBorrowedImplCopyWith(
          _$OnBorrowedImpl value, $Res Function(_$OnBorrowedImpl) then) =
      __$$OnBorrowedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBorrowedImplCopyWithImpl<$Res>
    extends _$ToolStateCopyWithImpl<$Res, _$OnBorrowedImpl>
    implements _$$OnBorrowedImplCopyWith<$Res> {
  __$$OnBorrowedImplCopyWithImpl(
      _$OnBorrowedImpl _value, $Res Function(_$OnBorrowedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnBorrowedImpl implements OnBorrowed {
  const _$OnBorrowedImpl();

  @override
  String toString() {
    return 'ToolState.onBorrowed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBorrowedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onBorrowed,
  }) {
    return onBorrowed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onBorrowed,
  }) {
    return onBorrowed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onBorrowed,
    required TResult orElse(),
  }) {
    if (onBorrowed != null) {
      return onBorrowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OnBorrowed value) onBorrowed,
  }) {
    return onBorrowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OnBorrowed value)? onBorrowed,
  }) {
    return onBorrowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OnBorrowed value)? onBorrowed,
    required TResult orElse(),
  }) {
    if (onBorrowed != null) {
      return onBorrowed(this);
    }
    return orElse();
  }
}

abstract class OnBorrowed implements ToolState {
  const factory OnBorrowed() = _$OnBorrowedImpl;
}
