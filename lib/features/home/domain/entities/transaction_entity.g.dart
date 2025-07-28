// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionEntity _$TransactionEntityFromJson(Map<String, dynamic> json) =>
    _TransactionEntity(
      id: json['id'] as String,
      description: json['description'] as String,
      category: TransactionCategoryEntity.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$TransactionEntityToJson(_TransactionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'category': instance.category,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
    };
