import 'package:flutter_test/flutter_test.dart';
import 'package:mini_personal_finance_app/features/home/data/mappers/transaction_mapper.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_entity.dart';
import 'package:mini_personal_finance_app/features/home/domain/entities/transaction_category_entity.dart';

void main() {
  group('TransactionMapper', () {
    test(
      'should convert TransactionEntity to TransactionDTO without errors',
      () {
        // Arrange
        final category = TransactionCategoryEntity(
          id: '1',
          name: 'Food',
          icon: '🍔',
          isExpense: true,
        );

        final entity = TransactionEntity(
          id: '123',
          description: 'Test transaction',
          category: category,
          amount: 50.0,
          date: DateTime(2023, 1, 1),
        );

        // Act
        final dto = entity.toDTO();

        // Assert
        expect(dto.id, '123');
        expect(dto.description, 'Test transaction');
        expect(dto.categoryId, 1);
        expect(dto.amount, 50.0);
        expect(dto.date, DateTime(2023, 1, 1));
      },
    );

    test('should convert TransactionDTO toJson without ArgumentError', () {
      // Arrange
      final category = TransactionCategoryEntity(
        id: '1',
        name: 'Food',
        icon: '🍔',
        isExpense: true,
      );

      final entity = TransactionEntity(
        id: '123',
        description: 'Test transaction',
        category: category,
        amount: 50.0,
        date: DateTime(2023, 1, 1),
      );

      // Act & Assert - This should not throw an ArgumentError
      final dto = entity.toDTO();
      final json = dto.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['id'], '123');
      expect(json['description'], 'Test transaction');
      expect(json['categoryId'], 1);
      expect(json['amount'], 50.0);
    });
  });
}
