import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
abstract class TransactionDTO with _$TransactionDTO {
  factory TransactionDTO({
    required String id,
    required String description,
    required int categoryId,
    required double amount,
    required DateTime date,
  }) = _TransactionDTO;

  factory TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionDTOFromJson(json);
}
