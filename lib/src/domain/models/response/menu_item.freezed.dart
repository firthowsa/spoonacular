// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuItemResponse _$MenuItemResponseFromJson(Map<String, dynamic> json) {
  return _MenuItemResponse.fromJson(json);
}

/// @nodoc
mixin _$MenuItemResponse {
  String get type => throw _privateConstructorUsedError;
  List<MenuItem> get menuItems => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get totalMenuItems => throw _privateConstructorUsedError;
  int get processingTimeMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemResponseCopyWith<MenuItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemResponseCopyWith<$Res> {
  factory $MenuItemResponseCopyWith(
          MenuItemResponse value, $Res Function(MenuItemResponse) then) =
      _$MenuItemResponseCopyWithImpl<$Res, MenuItemResponse>;
  @useResult
  $Res call(
      {String type,
      List<MenuItem> menuItems,
      int offset,
      int number,
      int totalMenuItems,
      int processingTimeMs});
}

/// @nodoc
class _$MenuItemResponseCopyWithImpl<$Res, $Val extends MenuItemResponse>
    implements $MenuItemResponseCopyWith<$Res> {
  _$MenuItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? menuItems = null,
    Object? offset = null,
    Object? number = null,
    Object? totalMenuItems = null,
    Object? processingTimeMs = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      menuItems: null == menuItems
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalMenuItems: null == totalMenuItems
          ? _value.totalMenuItems
          : totalMenuItems // ignore: cast_nullable_to_non_nullable
              as int,
      processingTimeMs: null == processingTimeMs
          ? _value.processingTimeMs
          : processingTimeMs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuItemResponseImplCopyWith<$Res>
    implements $MenuItemResponseCopyWith<$Res> {
  factory _$$MenuItemResponseImplCopyWith(_$MenuItemResponseImpl value,
          $Res Function(_$MenuItemResponseImpl) then) =
      __$$MenuItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      List<MenuItem> menuItems,
      int offset,
      int number,
      int totalMenuItems,
      int processingTimeMs});
}

/// @nodoc
class __$$MenuItemResponseImplCopyWithImpl<$Res>
    extends _$MenuItemResponseCopyWithImpl<$Res, _$MenuItemResponseImpl>
    implements _$$MenuItemResponseImplCopyWith<$Res> {
  __$$MenuItemResponseImplCopyWithImpl(_$MenuItemResponseImpl _value,
      $Res Function(_$MenuItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? menuItems = null,
    Object? offset = null,
    Object? number = null,
    Object? totalMenuItems = null,
    Object? processingTimeMs = null,
  }) {
    return _then(_$MenuItemResponseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      menuItems: null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalMenuItems: null == totalMenuItems
          ? _value.totalMenuItems
          : totalMenuItems // ignore: cast_nullable_to_non_nullable
              as int,
      processingTimeMs: null == processingTimeMs
          ? _value.processingTimeMs
          : processingTimeMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemResponseImpl implements _MenuItemResponse {
  const _$MenuItemResponseImpl(
      {required this.type,
      required final List<MenuItem> menuItems,
      required this.offset,
      required this.number,
      required this.totalMenuItems,
      required this.processingTimeMs})
      : _menuItems = menuItems;

  factory _$MenuItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemResponseImplFromJson(json);

  @override
  final String type;
  final List<MenuItem> _menuItems;
  @override
  List<MenuItem> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  final int offset;
  @override
  final int number;
  @override
  final int totalMenuItems;
  @override
  final int processingTimeMs;

  @override
  String toString() {
    return 'MenuItemResponse(type: $type, menuItems: $menuItems, offset: $offset, number: $number, totalMenuItems: $totalMenuItems, processingTimeMs: $processingTimeMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalMenuItems, totalMenuItems) ||
                other.totalMenuItems == totalMenuItems) &&
            (identical(other.processingTimeMs, processingTimeMs) ||
                other.processingTimeMs == processingTimeMs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_menuItems),
      offset,
      number,
      totalMenuItems,
      processingTimeMs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemResponseImplCopyWith<_$MenuItemResponseImpl> get copyWith =>
      __$$MenuItemResponseImplCopyWithImpl<_$MenuItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemResponseImplToJson(
      this,
    );
  }
}

abstract class _MenuItemResponse implements MenuItemResponse {
  const factory _MenuItemResponse(
      {required final String type,
      required final List<MenuItem> menuItems,
      required final int offset,
      required final int number,
      required final int totalMenuItems,
      required final int processingTimeMs}) = _$MenuItemResponseImpl;

  factory _MenuItemResponse.fromJson(Map<String, dynamic> json) =
      _$MenuItemResponseImpl.fromJson;

  @override
  String get type;
  @override
  List<MenuItem> get menuItems;
  @override
  int get offset;
  @override
  int get number;
  @override
  int get totalMenuItems;
  @override
  int get processingTimeMs;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemResponseImplCopyWith<_$MenuItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get imageType => throw _privateConstructorUsedError;
  String get restaurantChain => throw _privateConstructorUsedError;
  Servings get servings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      String imageType,
      String restaurantChain,
      Servings servings});

  $ServingsCopyWith<$Res> get servings;
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? imageType = null,
    Object? restaurantChain = null,
    Object? servings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantChain: null == restaurantChain
          ? _value.restaurantChain
          : restaurantChain // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as Servings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServingsCopyWith<$Res> get servings {
    return $ServingsCopyWith<$Res>(_value.servings, (value) {
      return _then(_value.copyWith(servings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
          _$MenuItemImpl value, $Res Function(_$MenuItemImpl) then) =
      __$$MenuItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      String imageType,
      String restaurantChain,
      Servings servings});

  @override
  $ServingsCopyWith<$Res> get servings;
}

/// @nodoc
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
      _$MenuItemImpl _value, $Res Function(_$MenuItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? imageType = null,
    Object? restaurantChain = null,
    Object? servings = null,
  }) {
    return _then(_$MenuItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantChain: null == restaurantChain
          ? _value.restaurantChain
          : restaurantChain // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as Servings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemImpl implements _MenuItem {
  const _$MenuItemImpl(
      {required this.id,
      required this.title,
      required this.image,
      required this.imageType,
      required this.restaurantChain,
      required this.servings});

  factory _$MenuItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String imageType;
  @override
  final String restaurantChain;
  @override
  final Servings servings;

  @override
  String toString() {
    return 'MenuItem(id: $id, title: $title, image: $image, imageType: $imageType, restaurantChain: $restaurantChain, servings: $servings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.restaurantChain, restaurantChain) ||
                other.restaurantChain == restaurantChain) &&
            (identical(other.servings, servings) ||
                other.servings == servings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, image, imageType, restaurantChain, servings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemImplToJson(
      this,
    );
  }
}

abstract class _MenuItem implements MenuItem {
  const factory _MenuItem(
      {required final int id,
      required final String title,
      required final String image,
      required final String imageType,
      required final String restaurantChain,
      required final Servings servings}) = _$MenuItemImpl;

  factory _MenuItem.fromJson(Map<String, dynamic> json) =
      _$MenuItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get imageType;
  @override
  String get restaurantChain;
  @override
  Servings get servings;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Servings _$ServingsFromJson(Map<String, dynamic> json) {
  return _Servings.fromJson(json);
}

/// @nodoc
mixin _$Servings {
  double get number => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServingsCopyWith<Servings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServingsCopyWith<$Res> {
  factory $ServingsCopyWith(Servings value, $Res Function(Servings) then) =
      _$ServingsCopyWithImpl<$Res, Servings>;
  @useResult
  $Res call({double number, double? size, String? unit});
}

/// @nodoc
class _$ServingsCopyWithImpl<$Res, $Val extends Servings>
    implements $ServingsCopyWith<$Res> {
  _$ServingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? size = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServingsImplCopyWith<$Res>
    implements $ServingsCopyWith<$Res> {
  factory _$$ServingsImplCopyWith(
          _$ServingsImpl value, $Res Function(_$ServingsImpl) then) =
      __$$ServingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double number, double? size, String? unit});
}

/// @nodoc
class __$$ServingsImplCopyWithImpl<$Res>
    extends _$ServingsCopyWithImpl<$Res, _$ServingsImpl>
    implements _$$ServingsImplCopyWith<$Res> {
  __$$ServingsImplCopyWithImpl(
      _$ServingsImpl _value, $Res Function(_$ServingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? size = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$ServingsImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServingsImpl implements _Servings {
  const _$ServingsImpl({required this.number, this.size, this.unit});

  factory _$ServingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServingsImplFromJson(json);

  @override
  final double number;
  @override
  final double? size;
  @override
  final String? unit;

  @override
  String toString() {
    return 'Servings(number: $number, size: $size, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServingsImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, size, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServingsImplCopyWith<_$ServingsImpl> get copyWith =>
      __$$ServingsImplCopyWithImpl<_$ServingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServingsImplToJson(
      this,
    );
  }
}

abstract class _Servings implements Servings {
  const factory _Servings(
      {required final double number,
      final double? size,
      final String? unit}) = _$ServingsImpl;

  factory _Servings.fromJson(Map<String, dynamic> json) =
      _$ServingsImpl.fromJson;

  @override
  double get number;
  @override
  double? get size;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$ServingsImplCopyWith<_$ServingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
