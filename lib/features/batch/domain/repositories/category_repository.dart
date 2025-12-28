import 'package:either_dart/either.dart';
import 'package:lost_n_found/core/error/failures.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';

abstract interface class ICategoryRepository {
  Future<Either<Failure, List<BatchEntiy>>> getAllCategory();
  Future<Either<Failure, BatchEntiy>> getCategoryById(String batchId);
  Future<Either<Failure, bool>> createCategory(BatchEntiy batch);
  Future<Either<Failure, bool>> updateCategory(BatchEntiy batch);
  Future<Either<Failure, bool>> deleteCategory(String batchId);
}
