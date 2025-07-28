import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_personal_finance_app/core/injection/injection.dart';
import 'package:mini_personal_finance_app/core/widgets/simpleAlert.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/repositories/transaction_repository.dart';
import 'package:mini_personal_finance_app/features/home/presentation/bloc/transaction_bloc.dart';

import 'package:mini_personal_finance_app/features/home/presentation/widgets/transaction_dialog.dart';
import 'package:mini_personal_finance_app/features/home/presentation/widgets/transaction_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final transactionRepository = getIt<TransactionRepository>();

    return BlocProvider(
      create: (context) =>
          TransactionBloc(transactionRepository: transactionRepository)
            ..add(const TransactionEvent.started()),
      child: HomeView(title: title),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: BlocBuilder<TransactionBloc, TransactionState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: Text(
                        'Press the + button to add your first transaction',
                      ),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (transactions) => RefreshIndicator(
                      onRefresh: () async {
                        context.read<TransactionBloc>().add(
                          const TransactionEvent.started(),
                        );
                      },
                      child: TransactionList(
                        transactions: state.maybeWhen(
                          loaded: (transactions) => transactions,
                          orElse: () => [],
                        ),
                        onTap: (transaction) {
                          showDialog(
                            context: context,
                            builder: (context) => TransactionDialog(
                              onSubmit:
                                  (
                                    String? id,
                                    bool isExpense,
                                    String category,
                                    double amount,
                                    String description,
                                    DateTime date,
                                  ) {
                                    // TODO: Handle transaction update
                                    print(
                                      'Transaction created: $description, $amount',
                                    );
                                  },
                              id: transaction.id,
                              isExpense: transaction.category.isExpense,
                              category: transaction.category.name,
                              amount: transaction.amount,
                              description: transaction.description,
                              date: transaction.date,
                            ),
                          );
                        },
                        onDelete: (transaction) {
                          SimpleAlert.showConfirm(
                            context,
                            title: 'Delete Transaction',
                            message:
                                'Are you sure you want to delete this transaction?',
                            onConfirm: () {
                              // TODO: Handle transaction deletion
                              print('Transaction deleted: ${transaction.id}');
                            },
                          );
                        },
                      ),
                    ),
                    error: (message) => Center(child: Text('Error: $message')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => TransactionDialog(
              onSubmit:
                  (
                    String? id,
                    bool isExpense,
                    String category,
                    double amount,
                    String description,
                    DateTime date,
                  ) {
                    context.read<TransactionBloc>().add(
                      TransactionEvent.addTransaction(
                        description: description,
                        category: TransactionCategoryEntity(
                          id: '',
                          name: category,
                          icon: '',
                          isExpense: isExpense,
                        ),
                        amount: amount,
                        date: DateTime.now(),
                      ),
                    );
                  },
            ),
          );
        },
        tooltip: 'Add Transaction',
        child: const Icon(Icons.add),
      ),
    );
  }
}
