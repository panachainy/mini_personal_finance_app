import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/repositories/transaction_repository.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionRepository _transactionRepository;

  TransactionBloc({required TransactionRepository transactionRepository})
    : _transactionRepository = transactionRepository,
      super(const TransactionState()) {
    on<_Started>(_onStarted);
    on<_LoadTransactions>(_onLoadTransactions);
    on<_AddTransaction>(_onAddTransaction);
    on<_UpdateTransaction>(_onUpdateTransaction);
    on<_DeleteTransaction>(_onDeleteTransaction);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<TransactionState> emit,
  ) async {
    add(const TransactionEvent.loadTransactions());
  }

  Future<void> _onLoadTransactions(
    _LoadTransactions event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(state.copyWith(status: TransactionStatus.loading));

      final newTransactions = await _transactionRepository.getTransactions();
      final newCategories = await _transactionRepository.getCategories();

      emit(
        state.copyWith(
          status: TransactionStatus.loaded,
          transactions: newTransactions,
          categories: newCategories,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TransactionStatus.error,
          errorMessage: 'Failed to load transactions: $e',
        ),
      );
    }
  }

  Future<void> _onAddTransaction(
    _AddTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(state.copyWith(status: TransactionStatus.loading));

      // Create new transaction with generated ID
      final newTransaction = TransactionEntity(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        description: event.description,
        category: event.category,
        amount: event.amount,
        date: event.date,
      );

      await _transactionRepository.addTransactionModel(newTransaction);

      emit(
        state.copyWith(
          status: TransactionStatus.loaded,
          transactions: state.transactions..add(newTransaction),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TransactionStatus.error,
          errorMessage: 'Failed to add transaction: $e',
        ),
      );
    }
  }

  Future<void> _onUpdateTransaction(
    _UpdateTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(state.copyWith(status: TransactionStatus.loading));

      // Find the transaction to update
      final index = state.transactions.indexWhere((t) => t.id == event.id);
      if (index == -1) {
        throw Exception('Transaction not found');
      }

      // Create updated transaction
      final updatedTransaction = TransactionEntity(
        id: state.transactions[index].id,
        description: event.description,
        category: event.category,
        amount: event.amount,
        date: event.date,
      );

      await _transactionRepository.updateTransactionModel(updatedTransaction);

      // Update the transaction in the state
      final updatedTransactions = List<TransactionEntity>.from(
        state.transactions,
      );
      updatedTransactions[index] = updatedTransaction;

      emit(
        state.copyWith(
          status: TransactionStatus.loaded,
          transactions: updatedTransactions,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TransactionStatus.error,
          errorMessage: 'Failed to update transaction: $e',
        ),
      );
    }
  }

  Future<void> _onDeleteTransaction(
    _DeleteTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(state.copyWith(status: TransactionStatus.loading));

      // Simulate API delay
      await Future.delayed(const Duration(milliseconds: 300));

      state.transactions.removeWhere(
        (transaction) => transaction.id == event.transactionId,
      );

      emit(
        state.copyWith(
          status: TransactionStatus.loaded,
          transactions: state.transactions,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TransactionStatus.error,
          errorMessage: 'Failed to delete transaction: $e',
        ),
      );
    }
  }
}
