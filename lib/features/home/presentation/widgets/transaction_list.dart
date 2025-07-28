import 'package:flutter/material.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_model.dart'
    show TransactionModel;

class TransactionList extends StatelessWidget {
  final List<TransactionModel> transactions;
  final Function(TransactionModel)? onTap;
  final Function(TransactionModel)? onDelete;

  const TransactionList({
    super.key,
    required this.transactions,
    this.onTap,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const Center(
        child: Text(
          'No transactions yet',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        final categoryColor = Color(transaction.category.colorCode);

        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: categoryColor,
              child: Text(
                transaction.category.icon,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            title: Text(transaction.description),
            subtitle: Text(transaction.category.name),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${transaction.category.isExpense ? '+' : '-'}\$${transaction.amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: transaction.category.isExpense
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
                Text(
                  '${transaction.date.day}/${transaction.date.month}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            onTap: () => onTap?.call(transaction),
            onLongPress: () => onDelete?.call(transaction),
          ),
        );
      },
    );
  }
}
