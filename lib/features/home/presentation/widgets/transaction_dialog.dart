import 'package:flutter/material.dart';

class TransactionDialog extends StatelessWidget {
  final Function(
    String? id,
    bool isExpense,
    String category,
    double amount,
    String description,
  )?
  onSubmit;

  const TransactionDialog({
    super.key,
    this.onSubmit,
    this.id,
    this.isExpense,
    this.category,
    this.amount,
    this.description,
  });

  // if have id it edit case
  final String? id;
  final bool? isExpense;
  final String? category;
  final double? amount;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController();
    final descriptionController = TextEditingController();

    return AlertDialog(
      title: Text(
        id != null ? 'Update Transaction' : 'Add Transaction',
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Amount',
              prefixText: '\$',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final amount = double.tryParse(amountController.text);
            if (amount != null) {
              onSubmit?.call(
                id,
                isExpense ?? false,
                category ?? '',
                amount,
                descriptionController.text,
              );
              Navigator.of(context).pop();
            }
          },
          child: const Text('Add Transaction'),
        ),
      ],
    );
  }
}
