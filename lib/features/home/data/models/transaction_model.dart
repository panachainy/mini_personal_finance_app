import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_category_model.dart'
    show TransactionCategoryModel;

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    required String id,
    required String description,
    required TransactionCategoryModel category,
    required double amount,
    required DateTime date,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
