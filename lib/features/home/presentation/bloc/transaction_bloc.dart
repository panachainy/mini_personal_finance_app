import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_model.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_category_model.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  // In-memory storage for demonstration - in a real app, this would be injected as a repository
  final List<TransactionModel> _transactions = [];

  TransactionBloc() : super(const TransactionState.initial()) {
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
        TransactionModel(
          id: '1',
          description: 'Grocery Shopping',
          amount: 50.0,
          category: TransactionCategoryModel(
            id: '1',
            name: 'Food',
            icon: '🍔',
            colorCode: Colors.red.toARGB32(),
            isExpense: true,
          ),
          date: DateTime.now(),
        ),
        TransactionModel(
          id: '2',
          description: 'Salary',
          amount: 1500.0,
          category: TransactionCategoryModel(
            id: '2',
            name: 'Salary',
            icon: '💼',
            colorCode: Colors.green.toARGB32(),
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
      final newTransaction = TransactionModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        description: event.description,
        category: event.category,
        amount: event.amount,
        date: event.date,
      );

      // Simulate API delay
      await Future.delayed(const Duration(milliseconds: 300));

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
