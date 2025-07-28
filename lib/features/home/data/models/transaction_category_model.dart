import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_model.freezed.dart';
part 'transaction_category_model.g.dart';

@freezed
abstract class TransactionCategoryModel with _$TransactionCategoryModel {
  const factory TransactionCategoryModel({
    required String id,
    required String name,
    required String icon,
    required String colorCode,
    required bool isExpense,
  }) = _TransactionCategoryModel;

  factory TransactionCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryModelFromJson(json);
}
