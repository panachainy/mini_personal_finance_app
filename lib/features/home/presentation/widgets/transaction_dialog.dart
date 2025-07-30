import 'package:flutter/material.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';

class TransactionDialog extends StatefulWidget {
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
  State<TransactionDialog> createState() => _TransactionDialogState();
}

class _TransactionDialogState extends State<TransactionDialog> {
  late final TextEditingController _amountController;
  late final TextEditingController _descriptionController;
  late String? _selectedCategoryId;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController(
      text: widget.amount != 0 ? widget.amount.toString() : '0.00',
    );
    _descriptionController = TextEditingController(
      text: widget.description ?? '',
    );
    _selectedCategoryId = widget.categoryId;
    _selectedDate = widget.date ?? DateTime.now();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  bool _validateInputs() {
    if (_selectedCategoryId == null || _selectedCategoryId!.isEmpty) {
      _showErrorSnackBar('Please select a category');
      return false;
    }

    final parsedAmount = double.tryParse(_amountController.text);
    if (parsedAmount == null || parsedAmount <= 0) {
      _showErrorSnackBar('Please enter a valid amount');
      return false;
    }

    return true;
  }

  void _submitTransaction() {
    if (!_validateInputs()) return;

    final parsedAmount = double.parse(_amountController.text);
    final enteredDescription = _descriptionController.text.trim();
    final selectedCategory = widget.masterCategories.firstWhere(
      (cat) => cat.id == _selectedCategoryId,
    );

    widget.onSubmit?.call(
      widget.id,
      widget.isExpense,
      selectedCategory,
      parsedAmount,
      enteredDescription,
      _selectedDate,
    );
    Navigator.of(context).pop();
  }

  Future<void> _selectDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.id != null ? 'Update Transaction' : 'Add Transaction',
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButtonFormField<String>(
            value: _selectedCategoryId,
            decoration: const InputDecoration(
              labelText: 'Category',
              border: OutlineInputBorder(),
            ),
            items: widget.masterCategories
                .map(
                  (category) => DropdownMenuItem<String>(
                    value: category.id,
                    child: Text(category.name),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategoryId = value;
              });
            },
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Amount',
              prefixText: '\$',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: TextEditingController(
              text:
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
            ),
            decoration: const InputDecoration(
              labelText: 'Date',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.calendar_today),
            ),
            readOnly: true,
            onTap: _selectDate,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submitTransaction,
          child: Text(
            widget.id != null ? 'Update Transaction' : 'Add Transaction',
          ),
        ),
      ],
    );
  }
}
