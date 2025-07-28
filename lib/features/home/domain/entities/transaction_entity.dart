import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';

part 'transaction_entity.freezed.dart';
part 'transaction_entity.g.dart';

@freezed
abstract class TransactionEntity with _$TransactionEntity {
  factory TransactionEntity({
    required String id,
    required String description,
    required TransactionCategoryEntity category,
    required double amount,
    required DateTime date,
  }) = _TransactionEntity;

  factory TransactionEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionEntityFromJson(json);
}
