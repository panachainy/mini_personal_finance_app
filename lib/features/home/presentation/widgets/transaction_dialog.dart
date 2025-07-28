import 'package:flutter/material.dart';

class TransactionDialog extends StatelessWidget {
  final Function(
    String? id,
    bool isExpense,
    String category,
    double amount,
    String description,
    DateTime date,
  )?
  onSubmit;

  // if have id it edit case
  final String? id;
  final bool? isExpense;
  final String? category;
  final double? amount;
  final String? description;
  final DateTime? date;

  const TransactionDialog({
    super.key,
    this.onSubmit,
    this.id,
    this.isExpense,
    this.category,
    this.amount,
    this.description,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController(
      text: amount != null ? amount.toString() : '',
    );
    final descriptionController = TextEditingController(
      text: description ?? '',
    );
    final selectedDate = ValueNotifier<DateTime>(date ?? DateTime.now());

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
          const SizedBox(height: 16),
          ValueListenableBuilder<DateTime>(
            valueListenable: selectedDate,
            builder: (context, date, _) {
              return TextField(
                controller: TextEditingController(
                  text: '${date.day}/${date.month}/${date.year}',
                ),
                decoration: const InputDecoration(
                  labelText: 'Date',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null) {
                    selectedDate.value = pickedDate;
                  }
                },
              );
            },
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
            final parsedAmount = double.tryParse(amountController.text);
            if (parsedAmount != null) {
              onSubmit?.call(
                id,
                isExpense ?? false,
                category ?? '',
                parsedAmount,
                descriptionController.text,
                selectedDate.value,
              );
              Navigator.of(context).pop();
            }
          },
          child: Text(id != null ? 'Update Transaction' : 'Add Transaction'),
        ),
      ],
    );
  }
}
