import 'package:either_dart/either.dart';
import 'package:lost_n_found/core/error/failures.dart';
import 'package:lost_n_found/features/batch/domain/entities/category_entity.dart';

abstract interface class ICategoryRepository {
  Future<List<CategoryEntity>> getAllCategory();
  Future<CategoryEntity> getCategoryById(String categoryId);
  Future<bool> createCategory(CategoryEntity category);
  Future<bool> updateCategory(CategoryEntity category);
  Future<bool> deleteCategory(String categoryId);
}
