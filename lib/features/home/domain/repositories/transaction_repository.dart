import 'package:mini_personal_finance_app/features/home/data/models/transaction_model.dart';

abstract class TransactionRepository {
  Future<List<TransactionModel>> getTransactionModels();
  Future<TransactionModel> getTransactionModelById(String id);
  Future<void> addTransactionModel(TransactionModel transactionModel);
  Future<void> updateTransactionModel(TransactionModel transactionModel);
  Future<void> deleteTransactionModel(String id);
  Future<List<TransactionModel>> getTransactionModelsByDateRange(
    DateTime startDate,
    DateTime endDate,
  );
  Future<List<TransactionModel>> getTransactionModelsByCategory(
    String category,
  );
}
