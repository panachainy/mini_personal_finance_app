// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionCategoryEntity {

 String get id; String get name; String get icon; bool get isExpense;
/// Create a copy of TransactionCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCategoryEntityCopyWith<TransactionCategoryEntity> get copyWith => _$TransactionCategoryEntityCopyWithImpl<TransactionCategoryEntity>(this as TransactionCategoryEntity, _$identity);

  /// Serializes this TransactionCategoryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isExpense, isExpense) || other.isExpense == isExpense));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,isExpense);

@override
String toString() {
  return 'TransactionCategoryEntity(id: $id, name: $name, icon: $icon, isExpense: $isExpense)';
}


}

/// @nodoc
abstract mixin class $TransactionCategoryEntityCopyWith<$Res>  {
  factory $TransactionCategoryEntityCopyWith(TransactionCategoryEntity value, $Res Function(TransactionCategoryEntity) _then) = _$TransactionCategoryEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String icon, bool isExpense
});




}
/// @nodoc
class _$TransactionCategoryEntityCopyWithImpl<$Res>
    implements $TransactionCategoryEntityCopyWith<$Res> {
  _$TransactionCategoryEntityCopyWithImpl(this._self, this._then);

  final TransactionCategoryEntity _self;
  final $Res Function(TransactionCategoryEntity) _then;

/// Create a copy of TransactionCategoryEntity
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


/// Adds pattern-matching-related methods to [TransactionCategoryEntity].
extension TransactionCategoryEntityPatterns on TransactionCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionCategoryEntity() when $default != null:
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
case _TransactionCategoryEntity() when $default != null:
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
case _TransactionCategoryEntity():
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
case _TransactionCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.isExpense);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionCategoryEntity implements TransactionCategoryEntity {
  const _TransactionCategoryEntity({required this.id, required this.name, required this.icon, required this.isExpense});
  factory _TransactionCategoryEntity.fromJson(Map<String, dynamic> json) => _$TransactionCategoryEntityFromJson(json);

@override final  String id;
@override final  String name;
@override final  String icon;
@override final  bool isExpense;

/// Create a copy of TransactionCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCategoryEntityCopyWith<_TransactionCategoryEntity> get copyWith => __$TransactionCategoryEntityCopyWithImpl<_TransactionCategoryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionCategoryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isExpense, isExpense) || other.isExpense == isExpense));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,isExpense);

@override
String toString() {
  return 'TransactionCategoryEntity(id: $id, name: $name, icon: $icon, isExpense: $isExpense)';
}


}

/// @nodoc
abstract mixin class _$TransactionCategoryEntityCopyWith<$Res> implements $TransactionCategoryEntityCopyWith<$Res> {
  factory _$TransactionCategoryEntityCopyWith(_TransactionCategoryEntity value, $Res Function(_TransactionCategoryEntity) _then) = __$TransactionCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String icon, bool isExpense
});




}
/// @nodoc
class __$TransactionCategoryEntityCopyWithImpl<$Res>
    implements _$TransactionCategoryEntityCopyWith<$Res> {
  __$TransactionCategoryEntityCopyWithImpl(this._self, this._then);

  final _TransactionCategoryEntity _self;
  final $Res Function(_TransactionCategoryEntity) _then;

/// Create a copy of TransactionCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? icon = null,Object? isExpense = null,}) {
  return _then(_TransactionCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isExpense: null == isExpense ? _self.isExpense : isExpense // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
