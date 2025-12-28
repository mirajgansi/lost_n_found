import 'package:equatable/equatable.dart';

class BatchEntiy extends Equatable {
  // batch id and status are optional because we need batch id and status for update and delete
  final String? batchId;
  final String batchName;
  final String? status;

  BatchEntiy({
    required this.batchId,
    required this.batchName,
    required this.status,
  });

  @override
  List<Object?> get props => [batchId, batchName, status];
}
