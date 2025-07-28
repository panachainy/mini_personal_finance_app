part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started() = _Started;
  const factory TransactionEvent.loadTransactions() = _LoadTransactions;
  const factory TransactionEvent.addTransaction({
    required String description,
    required TransactionCategoryEntity category,
    required double amount,
    required DateTime date,
  }) = _AddTransaction;
  const factory TransactionEvent.deleteTransaction({
    required String transactionId,
  }) = _DeleteTransaction;
}
