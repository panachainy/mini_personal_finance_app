// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionCategoryDTO {

 String get id; String get name; String get icon; bool get isExpense;
/// Create a copy of TransactionCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCategoryDTOCopyWith<TransactionCategoryDTO> get copyWith => _$TransactionCategoryDTOCopyWithImpl<TransactionCategoryDTO>(this as TransactionCategoryDTO, _$identity);

  /// Serializes this TransactionCategoryDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isExpense, isExpense) || other.isExpense == isExpense));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,isExpense);

@override
String toString() {
  return 'TransactionCategoryDTO(id: $id, name: $name, icon: $icon, isExpense: $isExpense)';
}


}

/// @nodoc
abstract mixin class $TransactionCategoryDTOCopyWith<$Res>  {
  factory $TransactionCategoryDTOCopyWith(TransactionCategoryDTO value, $Res Function(TransactionCategoryDTO) _then) = _$TransactionCategoryDTOCopyWithImpl;
@useResult
$Res call({
 String id, String name, String icon, bool isExpense
});




}
/// @nodoc
class _$TransactionCategoryDTOCopyWithImpl<$Res>
    implements $TransactionCategoryDTOCopyWith<$Res> {
  _$TransactionCategoryDTOCopyWithImpl(this._self, this._then);

  final TransactionCategoryDTO _self;
  final $Res Function(TransactionCategoryDTO) _then;

/// Create a copy of TransactionCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? icon = null,Object? isExpense = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isExpense: null == isExpense ? _self.isExpense : isExpense // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionCategoryDTO].
extension TransactionCategoryDTOPatterns on TransactionCategoryDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionCategoryDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionCategoryDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionCategoryDTO value)  $default,){
final _that = this;
switch (_that) {
case _TransactionCategoryDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionCategoryDTO value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionCategoryDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String icon,  bool isExpense)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.isExpense);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String icon,  bool isExpense)  $default,) {final _that = this;
switch (_that) {
case _TransactionCategoryDTO():
return $default(_that.id,_that.name,_that.icon,_that.isExpense);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String icon,  bool isExpense)?  $default,) {final _that = this;
switch (_that) {
case _TransactionCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.isExpense);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionCategoryDTO implements TransactionCategoryDTO {
  const _TransactionCategoryDTO({required this.id, required this.name, required this.icon, required this.isExpense});
  factory _TransactionCategoryDTO.fromJson(Map<String, dynamic> json) => _$TransactionCategoryDTOFromJson(json);

@override final  String id;
@override final  String name;
@override final  String icon;
@override final  bool isExpense;

/// Create a copy of TransactionCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCategoryDTOCopyWith<_TransactionCategoryDTO> get copyWith => __$TransactionCategoryDTOCopyWithImpl<_TransactionCategoryDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionCategoryDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isExpense, isExpense) || other.isExpense == isExpense));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,isExpense);

@override
String toString() {
  return 'TransactionCategoryDTO(id: $id, name: $name, icon: $icon, isExpense: $isExpense)';
}


}

/// @nodoc
abstract mixin class _$TransactionCategoryDTOCopyWith<$Res> implements $TransactionCategoryDTOCopyWith<$Res> {
  factory _$TransactionCategoryDTOCopyWith(_TransactionCategoryDTO value, $Res Function(_TransactionCategoryDTO) _then) = __$TransactionCategoryDTOCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String icon, bool isExpense
});




}
/// @nodoc
class __$TransactionCategoryDTOCopyWithImpl<$Res>
    implements _$TransactionCategoryDTOCopyWith<$Res> {
  __$TransactionCategoryDTOCopyWithImpl(this._self, this._then);

  final _TransactionCategoryDTO _self;
  final $Res Function(_TransactionCategoryDTO) _then;

/// Create a copy of TransactionCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? icon = null,Object? isExpense = null,}) {
  return _then(_TransactionCategoryDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isExpense: null == isExpense ? _self.isExpense : isExpense // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
