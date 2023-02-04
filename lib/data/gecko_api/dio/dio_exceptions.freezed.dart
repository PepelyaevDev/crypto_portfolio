// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DioExceptions {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DioExceptionsCopyWith<DioExceptions> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DioExceptionsCopyWith<$Res> {
  factory $DioExceptionsCopyWith(DioExceptions value, $Res Function(DioExceptions) then) =
      _$DioExceptionsCopyWithImpl<$Res, DioExceptions>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DioExceptionsCopyWithImpl<$Res, $Val extends DioExceptions>
    implements $DioExceptionsCopyWith<$Res> {
  _$DioExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionTimeoutExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$ConnectionTimeoutExceptionCopyWith(
          _$ConnectionTimeoutException value, $Res Function(_$ConnectionTimeoutException) then) =
      __$$ConnectionTimeoutExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionTimeoutExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$ConnectionTimeoutException>
    implements _$$ConnectionTimeoutExceptionCopyWith<$Res> {
  __$$ConnectionTimeoutExceptionCopyWithImpl(
      _$ConnectionTimeoutException _value, $Res Function(_$ConnectionTimeoutException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionTimeoutException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeoutException implements ConnectionTimeoutException {
  const _$ConnectionTimeoutException([this.message = 'Connection timeout with API server']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.connectionTimeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeoutException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeoutExceptionCopyWith<_$ConnectionTimeoutException> get copyWith =>
      __$$ConnectionTimeoutExceptionCopyWithImpl<_$ConnectionTimeoutException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return connectionTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return connectionTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeoutException implements DioExceptions {
  const factory ConnectionTimeoutException([final String message]) = _$ConnectionTimeoutException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionTimeoutExceptionCopyWith<_$ConnectionTimeoutException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTimeoutExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$SendTimeoutExceptionCopyWith(
          _$SendTimeoutException value, $Res Function(_$SendTimeoutException) then) =
      __$$SendTimeoutExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendTimeoutExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$SendTimeoutException>
    implements _$$SendTimeoutExceptionCopyWith<$Res> {
  __$$SendTimeoutExceptionCopyWithImpl(
      _$SendTimeoutException _value, $Res Function(_$SendTimeoutException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendTimeoutException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendTimeoutException implements SendTimeoutException {
  const _$SendTimeoutException([this.message = 'Send timeout in connection with API server']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.sendTimeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTimeoutException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTimeoutExceptionCopyWith<_$SendTimeoutException> get copyWith =>
      __$$SendTimeoutExceptionCopyWithImpl<_$SendTimeoutException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return sendTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return sendTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeoutException implements DioExceptions {
  const factory SendTimeoutException([final String message]) = _$SendTimeoutException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SendTimeoutExceptionCopyWith<_$SendTimeoutException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveTimeoutExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$ReceiveTimeoutExceptionCopyWith(
          _$ReceiveTimeoutException value, $Res Function(_$ReceiveTimeoutException) then) =
      __$$ReceiveTimeoutExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ReceiveTimeoutExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$ReceiveTimeoutException>
    implements _$$ReceiveTimeoutExceptionCopyWith<$Res> {
  __$$ReceiveTimeoutExceptionCopyWithImpl(
      _$ReceiveTimeoutException _value, $Res Function(_$ReceiveTimeoutException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveTimeoutException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiveTimeoutException implements ReceiveTimeoutException {
  const _$ReceiveTimeoutException([this.message = 'Receive timeout in connection with API server']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.receiveTimeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveTimeoutException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveTimeoutExceptionCopyWith<_$ReceiveTimeoutException> get copyWith =>
      __$$ReceiveTimeoutExceptionCopyWithImpl<_$ReceiveTimeoutException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return receiveTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return receiveTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class ReceiveTimeoutException implements DioExceptions {
  const factory ReceiveTimeoutException([final String message]) = _$ReceiveTimeoutException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveTimeoutExceptionCopyWith<_$ReceiveTimeoutException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$BadRequestExceptionCopyWith(
          _$BadRequestException value, $Res Function(_$BadRequestException) then) =
      __$$BadRequestExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$BadRequestException>
    implements _$$BadRequestExceptionCopyWith<$Res> {
  __$$BadRequestExceptionCopyWithImpl(
      _$BadRequestException _value, $Res Function(_$BadRequestException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadRequestException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequestException implements BadRequestException {
  const _$BadRequestException([this.message = 'Bad request']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestExceptionCopyWith<_$BadRequestException> get copyWith =>
      __$$BadRequestExceptionCopyWithImpl<_$BadRequestException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequestException implements DioExceptions {
  const factory BadRequestException([final String message]) = _$BadRequestException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestExceptionCopyWith<_$BadRequestException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$UnauthorizedExceptionCopyWith(
          _$UnauthorizedException value, $Res Function(_$UnauthorizedException) then) =
      __$$UnauthorizedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$UnauthorizedException>
    implements _$$UnauthorizedExceptionCopyWith<$Res> {
  __$$UnauthorizedExceptionCopyWithImpl(
      _$UnauthorizedException _value, $Res Function(_$UnauthorizedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthorizedException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedException implements UnauthorizedException {
  const _$UnauthorizedException([this.message = 'Unauthorized']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedExceptionCopyWith<_$UnauthorizedException> get copyWith =>
      __$$UnauthorizedExceptionCopyWithImpl<_$UnauthorizedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedException implements DioExceptions {
  const factory UnauthorizedException([final String message]) = _$UnauthorizedException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedExceptionCopyWith<_$UnauthorizedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$ForbiddenExceptionCopyWith(
          _$ForbiddenException value, $Res Function(_$ForbiddenException) then) =
      __$$ForbiddenExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForbiddenExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$ForbiddenException>
    implements _$$ForbiddenExceptionCopyWith<$Res> {
  __$$ForbiddenExceptionCopyWithImpl(
      _$ForbiddenException _value, $Res Function(_$ForbiddenException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForbiddenException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForbiddenException implements ForbiddenException {
  const _$ForbiddenException([this.message = 'Forbidden']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.forbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenExceptionCopyWith<_$ForbiddenException> get copyWith =>
      __$$ForbiddenExceptionCopyWithImpl<_$ForbiddenException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class ForbiddenException implements DioExceptions {
  const factory ForbiddenException([final String message]) = _$ForbiddenException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenExceptionCopyWith<_$ForbiddenException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$NotFoundExceptionCopyWith(
          _$NotFoundException value, $Res Function(_$NotFoundException) then) =
      __$$NotFoundExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$NotFoundException>
    implements _$$NotFoundExceptionCopyWith<$Res> {
  __$$NotFoundExceptionCopyWithImpl(
      _$NotFoundException _value, $Res Function(_$NotFoundException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundException implements NotFoundException {
  const _$NotFoundException([this.message = 'Not Found']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundExceptionCopyWith<_$NotFoundException> get copyWith =>
      __$$NotFoundExceptionCopyWithImpl<_$NotFoundException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundException implements DioExceptions {
  const factory NotFoundException([final String message]) = _$NotFoundException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundExceptionCopyWith<_$NotFoundException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerErrorExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$InternalServerErrorExceptionCopyWith(_$InternalServerErrorException value,
          $Res Function(_$InternalServerErrorException) then) =
      __$$InternalServerErrorExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InternalServerErrorExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$InternalServerErrorException>
    implements _$$InternalServerErrorExceptionCopyWith<$Res> {
  __$$InternalServerErrorExceptionCopyWithImpl(
      _$InternalServerErrorException _value, $Res Function(_$InternalServerErrorException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InternalServerErrorException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalServerErrorException implements InternalServerErrorException {
  const _$InternalServerErrorException([this.message = 'Internal server error']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.internalServerError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorExceptionCopyWith<_$InternalServerErrorException> get copyWith =>
      __$$InternalServerErrorExceptionCopyWithImpl<_$InternalServerErrorException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return internalServerError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return internalServerError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerErrorException implements DioExceptions {
  const factory InternalServerErrorException([final String message]) =
      _$InternalServerErrorException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InternalServerErrorExceptionCopyWith<_$InternalServerErrorException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadGatewayExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$BadGatewayExceptionCopyWith(
          _$BadGatewayException value, $Res Function(_$BadGatewayException) then) =
      __$$BadGatewayExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadGatewayExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$BadGatewayException>
    implements _$$BadGatewayExceptionCopyWith<$Res> {
  __$$BadGatewayExceptionCopyWithImpl(
      _$BadGatewayException _value, $Res Function(_$BadGatewayException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadGatewayException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadGatewayException implements BadGatewayException {
  const _$BadGatewayException([this.message = 'Bad gateway']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.badGateway(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadGatewayException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadGatewayExceptionCopyWith<_$BadGatewayException> get copyWith =>
      __$$BadGatewayExceptionCopyWithImpl<_$BadGatewayException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return badGateway(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return badGateway?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (badGateway != null) {
      return badGateway(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return badGateway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return badGateway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (badGateway != null) {
      return badGateway(this);
    }
    return orElse();
  }
}

abstract class BadGatewayException implements DioExceptions {
  const factory BadGatewayException([final String message]) = _$BadGatewayException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$BadGatewayExceptionCopyWith<_$BadGatewayException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$RequestCancelledExceptionCopyWith(
          _$RequestCancelledException value, $Res Function(_$RequestCancelledException) then) =
      __$$RequestCancelledExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestCancelledExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$RequestCancelledException>
    implements _$$RequestCancelledExceptionCopyWith<$Res> {
  __$$RequestCancelledExceptionCopyWithImpl(
      _$RequestCancelledException _value, $Res Function(_$RequestCancelledException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestCancelledException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestCancelledException implements RequestCancelledException {
  const _$RequestCancelledException([this.message = 'Request to API server was cancelled']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.cancel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelledException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelledExceptionCopyWith<_$RequestCancelledException> get copyWith =>
      __$$RequestCancelledExceptionCopyWithImpl<_$RequestCancelledException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return cancel(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return cancel?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class RequestCancelledException implements DioExceptions {
  const factory RequestCancelledException([final String message]) = _$RequestCancelledException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RequestCancelledExceptionCopyWith<_$RequestCancelledException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownExceptionCopyWith<$Res> implements $DioExceptionsCopyWith<$Res> {
  factory _$$UnknownExceptionCopyWith(
          _$UnknownException value, $Res Function(_$UnknownException) then) =
      __$$UnknownExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$UnknownException>
    implements _$$UnknownExceptionCopyWith<$Res> {
  __$$UnknownExceptionCopyWithImpl(
      _$UnknownException _value, $Res Function(_$UnknownException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownException implements UnknownException {
  const _$UnknownException([this.message = 'Unknown error']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioExceptions.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownExceptionCopyWith<_$UnknownException> get copyWith =>
      __$$UnknownExceptionCopyWithImpl<_$UnknownException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) badGateway,
    required TResult Function(String message) cancel,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? badGateway,
    TResult? Function(String message)? cancel,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? badGateway,
    TResult Function(String message)? cancel,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeoutException value) connectionTimeout,
    required TResult Function(SendTimeoutException value) sendTimeout,
    required TResult Function(ReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(InternalServerErrorException value) internalServerError,
    required TResult Function(BadGatewayException value) badGateway,
    required TResult Function(RequestCancelledException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult? Function(SendTimeoutException value)? sendTimeout,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(InternalServerErrorException value)? internalServerError,
    TResult? Function(BadGatewayException value)? badGateway,
    TResult? Function(RequestCancelledException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeoutException value)? connectionTimeout,
    TResult Function(SendTimeoutException value)? sendTimeout,
    TResult Function(ReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(InternalServerErrorException value)? internalServerError,
    TResult Function(BadGatewayException value)? badGateway,
    TResult Function(RequestCancelledException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownException implements DioExceptions {
  const factory UnknownException([final String message]) = _$UnknownException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownExceptionCopyWith<_$UnknownException> get copyWith =>
      throw _privateConstructorUsedError;
}
