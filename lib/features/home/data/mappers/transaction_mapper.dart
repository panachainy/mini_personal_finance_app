import 'package:mini_personal_finance_app/features/home/data/models/transaction_dto.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';

extension TransactionEntityMapper on TransactionEntity {
  /// Converts TransactionEntity to TransactionDTO for Firestore storage
  TransactionDTO toDTO() {
    return TransactionDTO(
      id: id,
      description: description,
      categoryId: int.parse(category.id), // Convert category id to int
      amount: amount,
      date: date,
    );
  }
}

extension TransactionDTOMapper on TransactionDTO {
  /// Converts TransactionDTO to TransactionEntity for domain use
  /// Note: This requires the category to be fetched separately and passed in
  TransactionEntity toEntity(TransactionCategoryEntity category) {
    return TransactionEntity(
      id: id,
      description: description,
      category: category,
      amount: amount,
      date: date,
    );
  }
}
