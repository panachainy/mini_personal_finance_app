import 'package:flutter/material.dart';
import 'package:mini_personal_finance_app/features/home/data/models/transaction_category_dto.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';

class TransactionDialog extends StatelessWidget {
  final List<TransactionCategoryEntity> masterCategories;
  final bool isExpense;
  final String? categoryId;
  final double amount;

  // if have id it edit case
  final String? id;
  final String? description;
  final DateTime? date;

  final Function(
    String? id,
    bool isExpense,
    TransactionCategoryEntity category,
    double amount,
    String description,
    DateTime date,
  )?
  onSubmit;

  const TransactionDialog({
    super.key,
    required this.masterCategories,
    required this.isExpense,
    required this.amount,
    this.categoryId,
    this.id,
    this.description,
    this.date,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController(
      text: amount != 0 ? amount.toString() : '0.00',
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
          DropdownButtonFormField<String>(
            value: categoryId,
            decoration: const InputDecoration(
              labelText: 'Category',
              border: OutlineInputBorder(),
            ),
            items: masterCategories
                .map(
                  (category) => DropdownMenuItem<String>(
                    value: category.id,
                    child: Text(category.name),
                  ),
                )
                .toList(),
            onChanged: (value) {
              // Handle category selection if needed
            },
          ),
          const SizedBox(height: 16),
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
                isExpense,
                masterCategories.firstWhere(
                  (cat) => cat.id == categoryId.toString(),
                ),
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
