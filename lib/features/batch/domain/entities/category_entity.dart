import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  // batch id and status are optional because we need batch id and status for update and delete
  final String? categoryId;
  final String categoryName;
  final String categoryDescription;
  final String? status;

  CategoryEntity({
    required this.categoryId,
    required this.categoryName,
    required this.categoryDescription,
    required this.status,
  });

  @override
  List<Object?> get props => [
    categoryId,
    categoryName,
    categoryDescription,
    status,
  ];
}
