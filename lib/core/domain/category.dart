import 'package:flutter_framework/core/domain/baseentity.dart';

class Category extends BaseEntity {
  Category({required super.id, required super.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      name: json["name"],
      
    );
  }

  Map toJson() {
    return {
      "id": id,
      "adi": name,
      
    };
  }
  
}