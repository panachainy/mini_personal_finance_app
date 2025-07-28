// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionCategoryEntity _$TransactionCategoryEntityFromJson(
  Map<String, dynamic> json,
) => _TransactionCategoryEntity(
  id: json['id'] as String,
  name: json['name'] as String,
  icon: json['icon'] as String,
  isExpense: json['isExpense'] as bool,
);

Map<String, dynamic> _$TransactionCategoryEntityToJson(
  _TransactionCategoryEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'isExpense': instance.isExpense,
};
