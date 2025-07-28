// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionCategoryModel _$TransactionCategoryModelFromJson(
  Map<String, dynamic> json,
) => _TransactionCategoryModel(
  id: json['id'] as String,
  name: json['name'] as String,
  icon: json['icon'] as String,
  colorCode: json['colorCode'] as String,
  isExpense: json['isExpense'] as bool,
);

Map<String, dynamic> _$TransactionCategoryModelToJson(
  _TransactionCategoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'colorCode': instance.colorCode,
  'isExpense': instance.isExpense,
};
