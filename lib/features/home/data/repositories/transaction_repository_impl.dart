import 'package:injectable/injectable.dart';
import 'package:mini_personal_finance_app/core/network/network.dart';
import 'package:mini_personal_finance_app/features/home/data/datasources/transaction_data_source.dart';
import 'package:mini_personal_finance_app/features/home/data/mappers/transaction_mapper.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_dto.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/repositories/transaction_repository.dart';

// TODO: move to backend side
final mockCategoryList = [
  TransactionCategoryEntity(id: '1', name: 'Food', icon: '🍔', isExpense: true),
  TransactionCategoryEntity(
    id: '2',
    name: 'Transport',
    icon: '🚗',
    isExpense: true,
  ),
  TransactionCategoryEntity(
    id: '3',
    name: 'Salary',
    icon: '💰',
    isExpense: false,
  ),
];

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
    // Convert TransactionEntity to TransactionDTO for Firestore compatibility
    final transactionDTO = transactionModel.toDTO();
    return dataSource.addTransaction(transactionDTO.toJson());
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
  Future<List<TransactionEntity>> getTransactions() async {
    return dataSource
        .getTransactions()
        .then((transactions) {
          return transactions.map((transactionMap) {
            final transactionDTO = TransactionDTO.fromJson(transactionMap);

            return transactionDTO.toEntity();
          }).toList();
        })
        .then((values) => values);
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
    // Convert TransactionEntity to TransactionDTO for Firestore compatibility
    final transactionDTO = transactionModel.toDTO();
    return dataSource.updateTransaction(
      transactionModel.id,
      transactionDTO.toJson(),
    );
  }

  @override
  Future<List<TransactionCategoryEntity>> getCategories() {
    // TODO: this is mocks

    return Future.value(mockCategoryList);
  }
}
