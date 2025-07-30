import 'package:mini_personal_finance_app/features/home/data/models/transaction_dto.dart';
import 'package:mini_personal_finance_app/features/home/data/repositories/transaction_repository_impl.dart';
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
  TransactionEntity toEntity() {
    // TransactionCategoryEntity category

    final category = mockCategoryList.firstWhere(
      (category) => category.id == categoryId.toString(),
      orElse: () => TransactionCategoryEntity(
        id: '0',
        name: 'Unknown',
        icon: '❓',
        isExpense: true,
      ),
    );

    return TransactionEntity(
      id: id,
      description: description,
      category: category,
      amount: amount,
      date: date,
    );
  }
}
