// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class BaseEntity {
  int? id;
  String? name;

  BaseEntity({required this.id, required this.name});

  BaseEntity.init() : id =0,name="";


}
