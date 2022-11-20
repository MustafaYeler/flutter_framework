import 'package:flutter_framework/core/domain/baseentity.dart';

class User extends BaseEntity {
  String? userName;
  String? password;

  User({required super.id, required super.name,required this.userName, required this.password});

  
}