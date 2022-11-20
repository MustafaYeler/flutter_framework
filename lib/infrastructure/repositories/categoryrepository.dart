import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_framework/core/application/abstract/categoryinterface.dart';
import 'package:flutter_framework/core/domain/category.dart';

class CategoryRepository extends CategoryInterface {

  @override
  Future<List<Category>> getCategoriesFromApi() async {
    
    String jsonString =
        await rootBundle.loadString('assets/repo/category.json');
    Iterable body = json.decode(jsonString);

    return body.map((e) => Category.fromJson(e)).toList();
   
  }
  
}