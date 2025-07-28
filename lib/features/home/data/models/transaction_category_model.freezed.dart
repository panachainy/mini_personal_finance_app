// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionCategoryModel {

 String get id; String get name; String get icon; String get color; bool get isExpense;
/// Create a copy of TransactionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCategoryModelCopyWith<TransactionCategoryModel> get copyWith => _$TransactionCategoryModelCopyWithImpl<TransactionCategoryModel>(this as TransactionCategoryModel, _$identity);

  /// Serializes this TransactionCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.isExpense, isExpense) || other.isExpense == isExpense));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,color,isExpense);

@override
String toString() {
  return 'TransactionCategoryModel(id: $id, name: $name, icon: $icon, color: $color, isExpense: $isExpense)';
}


}

/// @nodoc
abstract mixin class $TransactionCategoryModelCopyWith<$Res>  {
  factory $TransactionCategoryModelCopyWith(TransactionCategoryModel value, $Res Function(TransactionCategoryModel) _then) = _$TransactionCategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String icon, String color, bool isExpense
});




}
/// @nodoc
class _$TransactionCategoryModelCopyWithImpl<$Res>
    implements $TransactionCategoryModelCopyWith<$Res> {
  _$TransactionCategoryModelCopyWithImpl(this._self, this._then);

  final TransactionCategoryModel _self;
  final $Res Function(TransactionCategoryModel) _then;

/// Create a copy of TransactionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? icon = null,Object? color = null,Object? isExpense = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,isExpense: null == isExpense ? _self.isExpense : isExpense // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionCategoryModel].
extension TransactionCategoryModelPatterns on TransactionCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String icon,  String color,  bool isExpense)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.color,_that.isExpense);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String icon,  String color,  bool isExpense)  $default,) {final _that = this;
switch (_that) {
case _TransactionCategoryModel():
return $default(_that.id,_that.name,_that.icon,_that.color,_that.isExpense);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String icon,  String color,  bool isExpense)?  $default,) {final _that = this;
switch (_that) {
case _TransactionCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.color,_that.isExpense);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionCategoryModel implements TransactionCategoryModel {
  const _TransactionCategoryModel({required this.id, required this.name, required this.icon, required this.color, required this.isExpense});
  factory _TransactionCategoryModel.fromJson(Map<String, dynamic> json) => _$TransactionCategoryModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String icon;
@override final  String color;
@override final  bool isExpense;

/// Create a copy of TransactionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCategoryModelCopyWith<_TransactionCategoryModel> get copyWith => __$TransactionCategoryModelCopyWithImpl<_TransactionCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.isExpense, isExpense) || other.isExpense == isExpense));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,color,isExpense);

@override
String toString() {
  return 'TransactionCategoryModel(id: $id, name: $name, icon: $icon, color: $color, isExpense: $isExpense)';
}


}

/// @nodoc
abstract mixin class _$TransactionCategoryModelCopyWith<$Res> implements $TransactionCategoryModelCopyWith<$Res> {
  factory _$TransactionCategoryModelCopyWith(_TransactionCategoryModel value, $Res Function(_TransactionCategoryModel) _then) = __$TransactionCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String icon, String color, bool isExpense
});




}
/// @nodoc
class __$TransactionCategoryModelCopyWithImpl<$Res>
    implements _$TransactionCategoryModelCopyWith<$Res> {
  __$TransactionCategoryModelCopyWithImpl(this._self, this._then);

  final _TransactionCategoryModel _self;
  final $Res Function(_TransactionCategoryModel) _then;

/// Create a copy of TransactionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? icon = null,Object? color = null,Object? isExpense = null,}) {
  return _then(_TransactionCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,isExpense: null == isExpense ? _self.isExpense : isExpense // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
