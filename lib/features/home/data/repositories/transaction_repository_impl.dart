import 'package:injectable/injectable.dart';
import 'package:mini_personal_finance_app/core/network/network.dart';
import 'package:mini_personal_finance_app/features/home/data/datasources/transaction_data_source.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';
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
  Future<void> addTransactionModel(TransactionEntity transactionModel) {
    // TODO: query categoryId and add here

    return dataSource.addTransaction(transactionModel.toJson());
  }

  @override
  Future<void> deleteTransactionModel(String id) {
    // TODO: implement deleteTransactionModel
    throw UnimplementedError();
  }

  @override
  Future<TransactionEntity> getTransactionModelById(String id) {
    // TODO: implement getTransactionModelById
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionEntity>> getTransactionModels() {
    // TODO: implement getTransactionModels
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionEntity>> getTransactionModelsByCategory(
    String category,
  ) {
    // TODO: implement getTransactionModelsByCategory
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionEntity>> getTransactionModelsByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) {
    // TODO: implement getTransactionModelsByDateRange
    throw UnimplementedError();
  }

  @override
  Future<void> updateTransactionModel(TransactionEntity transactionModel) {
    // TODO: implement updateTransactionModel
    throw UnimplementedError();
  }
}
