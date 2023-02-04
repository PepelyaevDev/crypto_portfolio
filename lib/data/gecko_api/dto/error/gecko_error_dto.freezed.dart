// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gecko_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeckoErrorDTO _$GeckoErrorDTOFromJson(Map<String, dynamic> json) {
  return _GeckoErrorDTO.fromJson(json);
}

/// @nodoc
mixin _$GeckoErrorDTO {
  GeckoErrorStatusDTO get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeckoErrorDTOCopyWith<GeckoErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeckoErrorDTOCopyWith<$Res> {
  factory $GeckoErrorDTOCopyWith(
          GeckoErrorDTO value, $Res Function(GeckoErrorDTO) then) =
      _$GeckoErrorDTOCopyWithImpl<$Res, GeckoErrorDTO>;
  @useResult
  $Res call({GeckoErrorStatusDTO status});

  $GeckoErrorStatusDTOCopyWith<$Res> get status;
}

/// @nodoc
class _$GeckoErrorDTOCopyWithImpl<$Res, $Val extends GeckoErrorDTO>
    implements $GeckoErrorDTOCopyWith<$Res> {
  _$GeckoErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeckoErrorStatusDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeckoErrorStatusDTOCopyWith<$Res> get status {
    return $GeckoErrorStatusDTOCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeckoErrorDTOCopyWith<$Res>
    implements $GeckoErrorDTOCopyWith<$Res> {
  factory _$$_GeckoErrorDTOCopyWith(
          _$_GeckoErrorDTO value, $Res Function(_$_GeckoErrorDTO) then) =
      __$$_GeckoErrorDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GeckoErrorStatusDTO status});

  @override
  $GeckoErrorStatusDTOCopyWith<$Res> get status;
}

/// @nodoc
class __$$_GeckoErrorDTOCopyWithImpl<$Res>
    extends _$GeckoErrorDTOCopyWithImpl<$Res, _$_GeckoErrorDTO>
    implements _$$_GeckoErrorDTOCopyWith<$Res> {
  __$$_GeckoErrorDTOCopyWithImpl(
      _$_GeckoErrorDTO _value, $Res Function(_$_GeckoErrorDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_GeckoErrorDTO(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeckoErrorStatusDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeckoErrorDTO implements _GeckoErrorDTO {
  const _$_GeckoErrorDTO({required this.status});

  factory _$_GeckoErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GeckoErrorDTOFromJson(json);

  @override
  final GeckoErrorStatusDTO status;

  @override
  String toString() {
    return 'GeckoErrorDTO(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeckoErrorDTO &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeckoErrorDTOCopyWith<_$_GeckoErrorDTO> get copyWith =>
      __$$_GeckoErrorDTOCopyWithImpl<_$_GeckoErrorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeckoErrorDTOToJson(
      this,
    );
  }
}

abstract class _GeckoErrorDTO implements GeckoErrorDTO {
  const factory _GeckoErrorDTO({required final GeckoErrorStatusDTO status}) =
      _$_GeckoErrorDTO;

  factory _GeckoErrorDTO.fromJson(Map<String, dynamic> json) =
      _$_GeckoErrorDTO.fromJson;

  @override
  GeckoErrorStatusDTO get status;
  @override
  @JsonKey(ignore: true)
  _$$_GeckoErrorDTOCopyWith<_$_GeckoErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

GeckoErrorStatusDTO _$GeckoErrorStatusDTOFromJson(Map<String, dynamic> json) {
  return _GeckoErrorStatusDTO.fromJson(json);
}

/// @nodoc
mixin _$GeckoErrorStatusDTO {
  @JsonKey(name: 'error_code')
  int get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeckoErrorStatusDTOCopyWith<GeckoErrorStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeckoErrorStatusDTOCopyWith<$Res> {
  factory $GeckoErrorStatusDTOCopyWith(
          GeckoErrorStatusDTO value, $Res Function(GeckoErrorStatusDTO) then) =
      _$GeckoErrorStatusDTOCopyWithImpl<$Res, GeckoErrorStatusDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error_code') int errorCode,
      @JsonKey(name: 'error_message') String errorMessage});
}

/// @nodoc
class _$GeckoErrorStatusDTOCopyWithImpl<$Res, $Val extends GeckoErrorStatusDTO>
    implements $GeckoErrorStatusDTOCopyWith<$Res> {
  _$GeckoErrorStatusDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeckoErrorStatusDTOCopyWith<$Res>
    implements $GeckoErrorStatusDTOCopyWith<$Res> {
  factory _$$_GeckoErrorStatusDTOCopyWith(_$_GeckoErrorStatusDTO value,
          $Res Function(_$_GeckoErrorStatusDTO) then) =
      __$$_GeckoErrorStatusDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error_code') int errorCode,
      @JsonKey(name: 'error_message') String errorMessage});
}

/// @nodoc
class __$$_GeckoErrorStatusDTOCopyWithImpl<$Res>
    extends _$GeckoErrorStatusDTOCopyWithImpl<$Res, _$_GeckoErrorStatusDTO>
    implements _$$_GeckoErrorStatusDTOCopyWith<$Res> {
  __$$_GeckoErrorStatusDTOCopyWithImpl(_$_GeckoErrorStatusDTO _value,
      $Res Function(_$_GeckoErrorStatusDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_GeckoErrorStatusDTO(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeckoErrorStatusDTO implements _GeckoErrorStatusDTO {
  const _$_GeckoErrorStatusDTO(
      {@JsonKey(name: 'error_code') required this.errorCode,
      @JsonKey(name: 'error_message') required this.errorMessage});

  factory _$_GeckoErrorStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GeckoErrorStatusDTOFromJson(json);

  @override
  @JsonKey(name: 'error_code')
  final int errorCode;
  @override
  @JsonKey(name: 'error_message')
  final String errorMessage;

  @override
  String toString() {
    return 'GeckoErrorStatusDTO(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeckoErrorStatusDTO &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeckoErrorStatusDTOCopyWith<_$_GeckoErrorStatusDTO> get copyWith =>
      __$$_GeckoErrorStatusDTOCopyWithImpl<_$_GeckoErrorStatusDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeckoErrorStatusDTOToJson(
      this,
    );
  }
}

abstract class _GeckoErrorStatusDTO implements GeckoErrorStatusDTO {
  const factory _GeckoErrorStatusDTO(
          {@JsonKey(name: 'error_code') required final int errorCode,
          @JsonKey(name: 'error_message') required final String errorMessage}) =
      _$_GeckoErrorStatusDTO;

  factory _GeckoErrorStatusDTO.fromJson(Map<String, dynamic> json) =
      _$_GeckoErrorStatusDTO.fromJson;

  @override
  @JsonKey(name: 'error_code')
  int get errorCode;
  @override
  @JsonKey(name: 'error_message')
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_GeckoErrorStatusDTOCopyWith<_$_GeckoErrorStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
