import 'package:flutter_framework/core/domain/category.dart';
import 'package:flutter_framework/infrastructure/repositories/categoryrepository.dart';

class CategoryController {
  List<Category> categoryList = [];
 

  void getCategoriesFromApi(){
    CategoryRepository().getCategoriesFromApi().then((value) => (){
      categoryList = value;
      
    });

  }
}