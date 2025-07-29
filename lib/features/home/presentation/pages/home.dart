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
                  if (state.status == TransactionStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == TransactionStatus.error) {
                    return Center(child: Text('Error: ${state.errorMessage}'));
                  } else if (state.status == TransactionStatus.loaded) {
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<TransactionBloc>().add(
                          const TransactionEvent.started(),
                        );
                      },
                      child: TransactionList(
                        transactions: state.transactions,
                        onTap: (transaction) {
                          showDialog(
                            context: context,
                            builder: (context) => TransactionDialog(
                              masterCategories: state.categories,
                              id: transaction.id,
                              isExpense: transaction.category.isExpense,
                              categoryId: transaction.category.id,
                              amount: transaction.amount,
                              description: transaction.description,
                              date: transaction.date,
                              onSubmit:
                                  (
                                    String? id,
                                    bool isExpense,
                                    TransactionCategoryEntity category,
                                    double amount,
                                    String description,
                                    DateTime date,
                                  ) {
                                    // TODO: Handle transaction update
                                    // You can uncomment the line above and use transactionBloc here
                                    print(
                                      'Transaction created: $id, $isExpense, $category, $amount, $description, $date',
                                    );
                                  },
                            ),
                          );
                        },
                        onDelete: (transaction) {
                          // final transactionBloc = context.read<TransactionBloc>();
                          SimpleAlert.showConfirm(
                            context,
                            title: 'Delete Transaction',
                            message:
                                'Are you sure you want to delete this transaction?',
                            onConfirm: () {
                              // TODO: Handle transaction deletion
                              // You can uncomment the line above and use transactionBloc here
                              print('Transaction deleted: ${transaction.id}');
                            },
                          );
                        },
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text(
                        'No transactions yet',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final transactionBloc = context.read<TransactionBloc>();
          showDialog(
            context: context,
            builder: (context) => TransactionDialog(
              masterCategories: transactionBloc.state.categories,
              isExpense: false,
              amount: 0,
              onSubmit:
                  (
                    String? id,
                    bool isExpense,
                    TransactionCategoryEntity category,
                    double amount,
                    String description,
                    DateTime date,
                  ) {
                    transactionBloc.add(
                      TransactionEvent.addTransaction(
                        description: description,
                        category: category,
                        amount: amount,
                        date: date,
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
