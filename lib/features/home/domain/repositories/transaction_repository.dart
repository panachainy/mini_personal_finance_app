import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';

abstract class TransactionRepository {
  Future<List<TransactionEntity>> getTransactions();
  Future<TransactionEntity> getTransactionModelById(String id);
  Future<void> addTransactionModel(TransactionEntity transactionModel);
  Future<void> updateTransactionModel(TransactionEntity transactionModel);
  Future<void> deleteTransactionModel(String id);
  Future<List<TransactionEntity>> getTransactionModelsByDateRange(
    DateTime startDate,
    DateTime endDate,
  );
  Future<List<TransactionEntity>> getTransactionModelsByCategory(
    String category,
  );
  Future<List<TransactionCategoryEntity>> getCategories();
}
