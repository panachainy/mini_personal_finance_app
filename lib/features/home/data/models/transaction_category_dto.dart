import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_dto.freezed.dart';
part 'transaction_category_dto.g.dart';

@freezed
abstract class TransactionCategoryDTO with _$TransactionCategoryDTO {
  const factory TransactionCategoryDTO({
    required String id,
    required String name,
    required String icon,
    required bool isExpense,
  }) = _TransactionCategoryDTO;

  factory TransactionCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryDTOFromJson(json);
}
