
import '../../domain/entities/cat_fact_entity.dart';

class CatFactResponseModel extends CatFactEntity {
  CatFactResponseModel({
    required super.fact,
    required super.length,
  });

  factory CatFactResponseModel.fromJson(Map<String, dynamic> json) {
    return CatFactResponseModel(
      fact: json['fact'], 
    length: json['length']);
  }
}