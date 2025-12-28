import 'package:hive/hive.dart';
import 'package:lost_n_found/core/constants/hive_table_constant.dart';
import 'package:lost_n_found/features/batch/domain/entities/category_entity.dart';
import 'package:uuid/uuid.dart';

part 'category_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.categoryTypeId)
class CategoryHiveModel extends HiveObject {
  @HiveField(0)
  final String categoryId;

  @HiveField(1)
  final String categoryName;

  @HiveField(2)
  final String categoryDescription;

  @HiveField(3)
  final String? categorystatus;

  CategoryHiveModel({
    String? categoryId,
    required this.categoryName,
    required this.categoryDescription,
    this.categorystatus,
  }) : categoryId = categoryId ?? const Uuid().v4();

  CategoryEntity toEntity() {
    return CategoryEntity(
      categoryId: categoryId,
      categoryName: categoryName,
      categoryDescription: categoryDescription,
      categoryStatus: categorystatus,
    );
  }

  factory CategoryHiveModel.fromEntity(CategoryEntity entity) {
    return CategoryHiveModel(
      categoryId: entity.categoryId,
      categoryName: entity.categoryName,
      categoryDescription: entity.categoryDescription,
      categorystatus: entity.categoryStatus,
    );
  }

  static List<CategoryEntity> toEntityList(List<CategoryHiveModel> models) {
    return models.map((e) => e.toEntity()).toList();
  }
}
