import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/repositories/transaction_repository.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  // In-memory storage for demonstration - in a real app, this would be injected as a repository
  final List<TransactionEntity> _transactions = [];
  final TransactionRepository _transactionRepository;

  TransactionBloc({required TransactionRepository transactionRepository})
    : _transactionRepository = transactionRepository,
      super(const TransactionState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadTransactions>(_onLoadTransactions);
    on<_AddTransaction>(_onAddTransaction);
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
      emit(const TransactionState.loading());

      // Simulate API delay
      await Future.delayed(const Duration(milliseconds: 500));

      // TODO: impl repository to fetch transactions
      _transactions.addAll([
        TransactionEntity(
          id: '1',
          description: 'Grocery Shopping',
          amount: 50.0,
          category: TransactionCategoryEntity(
            id: '1',
            name: 'Food',
            icon: '🍔',
            isExpense: true,
          ),
          date: DateTime.now(),
        ),
        TransactionEntity(
          id: '2',
          description: 'Salary',
          amount: 1500.0,
          category: TransactionCategoryEntity(
            id: '2',
            name: 'Salary',
            icon: '💼',
            isExpense: false,
          ),
          date: DateTime.now(),
        ),
      ]);

      emit(TransactionState.loaded(transactions: List.from(_transactions)));
    } catch (e) {
      emit(TransactionState.error(message: 'Failed to load transactions: $e'));
    }
  }

  Future<void> _onAddTransaction(
    _AddTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(const TransactionState.loading());

      // Create new transaction with generated ID
      final newTransaction = TransactionEntity(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        description: event.description,
        category: event.category,
        amount: event.amount,
        date: event.date,
      );

      await _transactionRepository.addTransactionModel(newTransaction);

      // Add to in-memory storage
      _transactions.add(newTransaction);

      emit(TransactionState.loaded(transactions: List.from(_transactions)));
    } catch (e) {
      emit(TransactionState.error(message: 'Failed to add transaction: $e'));
    }
  }

  Future<void> _onDeleteTransaction(
    _DeleteTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(const TransactionState.loading());

      // Simulate API delay
      await Future.delayed(const Duration(milliseconds: 300));

      // Remove from in-memory storage
      _transactions.removeWhere(
        (transaction) => transaction.id == event.transactionId,
      );

      emit(TransactionState.loaded(transactions: List.from(_transactions)));
    } catch (e) {
      emit(TransactionState.error(message: 'Failed to delete transaction: $e'));
    }
  }
}
