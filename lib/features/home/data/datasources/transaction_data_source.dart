import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class TransactionDataSource {
  Future<List<Map<String, dynamic>>> getTransactions();
  Future<void> addTransaction(Map<String, dynamic> transaction);
  Future<void> updateTransaction(String id, Map<String, dynamic> transaction);
  Future<void> deleteTransaction(String id);
}

@Injectable(as: TransactionDataSource)
class TransactionDataSourceImpl implements TransactionDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'transactions';

  @override
  Future<List<Map<String, dynamic>>> getTransactions() async {
    try {
      final querySnapshot = await _firestore
          .collection(_collection)
          .orderBy('date', descending: true)
          .get();

      return querySnapshot.docs
          .map((doc) => {'id': doc.id, ...doc.data()})
          .toList();
    } catch (e) {
      throw Exception('Failed to get transactions: $e');
    }
  }

  @override
  Future<void> addTransaction(Map<String, dynamic> transaction) async {
    try {
      await _firestore.collection(_collection).add(transaction);
    } catch (e) {
      throw Exception('Failed to add transaction: $e');
    }
  }

  @override
  Future<void> updateTransaction(
    String id,
    Map<String, dynamic> transaction,
  ) async {
    try {
      await _firestore.collection(_collection).doc(id).update(transaction);
    } catch (e) {
      throw Exception('Failed to update transaction: $e');
    }
  }

  @override
  Future<void> deleteTransaction(String id) async {
    try {
      await _firestore.collection(_collection).doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete transaction: $e');
    }
  }
}
