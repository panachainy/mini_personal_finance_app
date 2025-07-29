part of 'transaction_bloc.dart';

enum TransactionStatus { initial, loading, loaded, error }

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(TransactionStatus.initial) TransactionStatus status,
    @Default([]) List<TransactionEntity> transactions,
    @Default([]) List<TransactionCategoryEntity> categories,
    String? errorMessage,
  }) = _TransactionState;
}
