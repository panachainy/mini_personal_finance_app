import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_personal_finance_app/core/widgets/simpleAlert.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_category_model.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_model.dart';
import 'package:mini_personal_finance_app/features/home/presentation/bloc/transaction_bloc.dart';

import 'package:mini_personal_finance_app/features/home/presentation/widgets/transaction_dialog.dart';
import 'package:mini_personal_finance_app/features/home/presentation/widgets/transaction_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TransactionBloc()..add(const TransactionEvent.started()),
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
              child: TransactionList(
                transactions: [
                  // TODO: Replace with actual transaction data
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
                ],
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
                          ) {
                            print('Transaction created: $description, $amount');
                          },
                      id: transaction.id,
                      isExpense: transaction.category.isExpense,
                      category: transaction.category.name,
                      amount: transaction.amount,
                      description: transaction.description,
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
                  ) {
                    // Handle transaction creation
                    print('Transaction created: $description, $amount');
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
