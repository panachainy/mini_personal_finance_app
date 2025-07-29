// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent()';
}


}

/// @nodoc
class $TransactionEventCopyWith<$Res>  {
$TransactionEventCopyWith(TransactionEvent _, $Res Function(TransactionEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionEvent].
extension TransactionEventPatterns on TransactionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadTransactions value)?  loadTransactions,TResult Function( _AddTransaction value)?  addTransaction,TResult Function( _DeleteTransaction value)?  deleteTransaction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadTransactions() when loadTransactions != null:
return loadTransactions(_that);case _AddTransaction() when addTransaction != null:
return addTransaction(_that);case _DeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadTransactions value)  loadTransactions,required TResult Function( _AddTransaction value)  addTransaction,required TResult Function( _DeleteTransaction value)  deleteTransaction,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadTransactions():
return loadTransactions(_that);case _AddTransaction():
return addTransaction(_that);case _DeleteTransaction():
return deleteTransaction(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadTransactions value)?  loadTransactions,TResult? Function( _AddTransaction value)?  addTransaction,TResult? Function( _DeleteTransaction value)?  deleteTransaction,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadTransactions() when loadTransactions != null:
return loadTransactions(_that);case _AddTransaction() when addTransaction != null:
return addTransaction(_that);case _DeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadTransactions,TResult Function( String description,  TransactionCategoryEntity category,  double amount,  DateTime date)?  addTransaction,TResult Function( String transactionId)?  deleteTransaction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadTransactions() when loadTransactions != null:
return loadTransactions();case _AddTransaction() when addTransaction != null:
return addTransaction(_that.description,_that.category,_that.amount,_that.date);case _DeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that.transactionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadTransactions,required TResult Function( String description,  TransactionCategoryEntity category,  double amount,  DateTime date)  addTransaction,required TResult Function( String transactionId)  deleteTransaction,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadTransactions():
return loadTransactions();case _AddTransaction():
return addTransaction(_that.description,_that.category,_that.amount,_that.date);case _DeleteTransaction():
return deleteTransaction(_that.transactionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadTransactions,TResult? Function( String description,  TransactionCategoryEntity category,  double amount,  DateTime date)?  addTransaction,TResult? Function( String transactionId)?  deleteTransaction,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadTransactions() when loadTransactions != null:
return loadTransactions();case _AddTransaction() when addTransaction != null:
return addTransaction(_that.description,_that.category,_that.amount,_that.date);case _DeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that.transactionId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements TransactionEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent.started()';
}


}




/// @nodoc


class _LoadTransactions implements TransactionEvent {
  const _LoadTransactions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTransactions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent.loadTransactions()';
}


}




/// @nodoc


class _AddTransaction implements TransactionEvent {
  const _AddTransaction({required this.description, required this.category, required this.amount, required this.date});
  

 final  String description;
 final  TransactionCategoryEntity category;
 final  double amount;
 final  DateTime date;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTransactionCopyWith<_AddTransaction> get copyWith => __$AddTransactionCopyWithImpl<_AddTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTransaction&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,description,category,amount,date);

@override
String toString() {
  return 'TransactionEvent.addTransaction(description: $description, category: $category, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class _$AddTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory _$AddTransactionCopyWith(_AddTransaction value, $Res Function(_AddTransaction) _then) = __$AddTransactionCopyWithImpl;
@useResult
$Res call({
 String description, TransactionCategoryEntity category, double amount, DateTime date
});


$TransactionCategoryEntityCopyWith<$Res> get category;

}
/// @nodoc
class __$AddTransactionCopyWithImpl<$Res>
    implements _$AddTransactionCopyWith<$Res> {
  __$AddTransactionCopyWithImpl(this._self, this._then);

  final _AddTransaction _self;
  final $Res Function(_AddTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,Object? category = null,Object? amount = null,Object? date = null,}) {
  return _then(_AddTransaction(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategoryEntity,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCategoryEntityCopyWith<$Res> get category {
  
  return $TransactionCategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc


class _DeleteTransaction implements TransactionEvent {
  const _DeleteTransaction({required this.transactionId});
  

 final  String transactionId;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTransactionCopyWith<_DeleteTransaction> get copyWith => __$DeleteTransactionCopyWithImpl<_DeleteTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent.deleteTransaction(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class _$DeleteTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory _$DeleteTransactionCopyWith(_DeleteTransaction value, $Res Function(_DeleteTransaction) _then) = __$DeleteTransactionCopyWithImpl;
@useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class __$DeleteTransactionCopyWithImpl<$Res>
    implements _$DeleteTransactionCopyWith<$Res> {
  __$DeleteTransactionCopyWithImpl(this._self, this._then);

  final _DeleteTransaction _self;
  final $Res Function(_DeleteTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(_DeleteTransaction(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TransactionState {

 TransactionStatus get status; List<TransactionEntity> get transactions; List<TransactionCategoryEntity> get categories; String? get errorMessage;
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateCopyWith<TransactionState> get copyWith => _$TransactionStateCopyWithImpl<TransactionState>(this as TransactionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(transactions),const DeepCollectionEquality().hash(categories),errorMessage);

@override
String toString() {
  return 'TransactionState(status: $status, transactions: $transactions, categories: $categories, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $TransactionStateCopyWith<$Res>  {
  factory $TransactionStateCopyWith(TransactionState value, $Res Function(TransactionState) _then) = _$TransactionStateCopyWithImpl;
@useResult
$Res call({
 TransactionStatus status, List<TransactionEntity> transactions, List<TransactionCategoryEntity> categories, String? errorMessage
});




}
/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._self, this._then);

  final TransactionState _self;
  final $Res Function(TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? transactions = null,Object? categories = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<TransactionCategoryEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionState].
extension TransactionStatePatterns on TransactionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionStatus status,  List<TransactionEntity> transactions,  List<TransactionCategoryEntity> categories,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
return $default(_that.status,_that.transactions,_that.categories,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionStatus status,  List<TransactionEntity> transactions,  List<TransactionCategoryEntity> categories,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _TransactionState():
return $default(_that.status,_that.transactions,_that.categories,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionStatus status,  List<TransactionEntity> transactions,  List<TransactionCategoryEntity> categories,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
return $default(_that.status,_that.transactions,_that.categories,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionState implements TransactionState {
  const _TransactionState({this.status = TransactionStatus.initial, final  List<TransactionEntity> transactions = const [], final  List<TransactionCategoryEntity> categories = const [], this.errorMessage}): _transactions = transactions,_categories = categories;
  

@override@JsonKey() final  TransactionStatus status;
 final  List<TransactionEntity> _transactions;
@override@JsonKey() List<TransactionEntity> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

 final  List<TransactionCategoryEntity> _categories;
@override@JsonKey() List<TransactionCategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? errorMessage;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStateCopyWith<_TransactionState> get copyWith => __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_transactions),const DeepCollectionEquality().hash(_categories),errorMessage);

@override
String toString() {
  return 'TransactionState(status: $status, transactions: $transactions, categories: $categories, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$TransactionStateCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(_TransactionState value, $Res Function(_TransactionState) _then) = __$TransactionStateCopyWithImpl;
@override @useResult
$Res call({
 TransactionStatus status, List<TransactionEntity> transactions, List<TransactionCategoryEntity> categories, String? errorMessage
});




}
/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(this._self, this._then);

  final _TransactionState _self;
  final $Res Function(_TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? transactions = null,Object? categories = null,Object? errorMessage = freezed,}) {
  return _then(_TransactionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<TransactionCategoryEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
