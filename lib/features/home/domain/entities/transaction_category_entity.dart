import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_entity.freezed.dart';
part 'transaction_category_entity.g.dart';

@freezed
abstract class TransactionCategoryEntity with _$TransactionCategoryEntity {
  const factory TransactionCategoryEntity({
    required String id,
    required String name,
    required String icon,
    required bool isExpense,
  }) = _TransactionCategoryEntity;

  factory TransactionCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryEntityFromJson(json);
}
