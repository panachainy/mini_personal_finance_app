import 'package:injectable/injectable.dart';
import 'package:mini_personal_finance_app/core/network/network.dart';
import 'package:mini_personal_finance_app/features/home/data/datasources/transaction_data_source.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_model.dart';
import 'package:mini_personal_finance_app/features/home/domain/repositories/transaction_repository.dart';

@Injectable(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionDataSource dataSource;
  final NetworkInfo networkInfo;

  TransactionRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<void> addTransactionModel(TransactionModel transactionModel) {
    return dataSource.addTransaction(transactionModel.toJson());
  }

  @override
  Future<void> deleteTransactionModel(String id) {
    // TODO: implement deleteTransactionModel
    throw UnimplementedError();
  }

  @override
  Future<TransactionModel> getTransactionModelById(String id) {
    // TODO: implement getTransactionModelById
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionModel>> getTransactionModels() {
    // TODO: implement getTransactionModels
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionModel>> getTransactionModelsByCategory(
    String category,
  ) {
    // TODO: implement getTransactionModelsByCategory
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionModel>> getTransactionModelsByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) {
    // TODO: implement getTransactionModelsByDateRange
    throw UnimplementedError();
  }

  @override
  Future<void> updateTransactionModel(TransactionModel transactionModel) {
    // TODO: implement updateTransactionModel
    throw UnimplementedError();
  }
}
