// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionCategoryDTO _$TransactionCategoryDTOFromJson(
  Map<String, dynamic> json,
) => _TransactionCategoryDTO(
  id: json['id'] as String,
  name: json['name'] as String,
  icon: json['icon'] as String,
  isExpense: json['isExpense'] as bool,
);

Map<String, dynamic> _$TransactionCategoryDTOToJson(
  _TransactionCategoryDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'isExpense': instance.isExpense,
};
