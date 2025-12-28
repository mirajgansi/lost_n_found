import 'package:either_dart/src/either.dart';
import 'package:lost_n_found/core/error/failures.dart';
import 'package:lost_n_found/core/services/hive/hive_service.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';
import 'package:lost_n_found/features/batch/domain/entities/category_entity.dart';

import '../category_datasource.dart';

class CategoryLocalDatasouce implements ICategoryRepository {
  final HiveService _hiveService;

  CategoryLocalDatasouce({required HiveService hiveService})
    : _hiveService = hiveService;

  @override
  Future<bool> createCategory(CategoryEntity category) {
    // TODO: implement createCategory
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteCategory(String categoryId) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryEntity>> getAllCategory() {
    // TODO: implement getAllCategory
    throw UnimplementedError();
  }

  @override
  Future<CategoryEntity> getCategoryById(String categoryId) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Future<bool> updateCategory(CategoryEntity category) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}
