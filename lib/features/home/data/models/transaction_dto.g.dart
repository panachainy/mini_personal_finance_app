// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionDTO _$TransactionDTOFromJson(Map<String, dynamic> json) =>
    _TransactionDTO(
      id: json['id'] as String,
      description: json['description'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$TransactionDTOToJson(_TransactionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
    };
