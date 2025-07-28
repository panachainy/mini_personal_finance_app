import 'package:flutter/material.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_category_model.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_model.dart'
    show TransactionModel;
import 'package:mini_personal_finance_app/features/home/presentation/widgets/transaction_list.dart'
    show TransactionList;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
                  // Handle tap
                },
                onDelete: (transaction) {
                  // Handle delete
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to add transaction page
        },
        tooltip: 'Add Transaction',
        child: const Icon(Icons.add),
      ),
    );
  }
}
