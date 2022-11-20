import 'package:flutter_framework/core/domain/category.dart';

abstract class CategoryInterface {
Future<List<Category>> getCategoriesFromApi();

  
}