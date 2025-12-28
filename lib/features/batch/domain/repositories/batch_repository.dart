import 'package:either_dart/either.dart';
import 'package:lost_n_found/core/error/failures.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';

abstract interface class IBatchRepository {
  Future<Either<Failure, List<BatchEntiy>>> getAllBatches();
  Future<Either<Failure, BatchEntiy>> getBatchById(String batchId);
  Future<Either<Failure, bool>> createBatch(BatchEntiy batch);
  Future<Either<Failure, bool>> updateBatch(BatchEntiy batch);
  Future<Either<Failure, bool>> deleteBatch(String batchId);
}
