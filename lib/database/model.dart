import 'package:flutter/material.dart';
/*class Model {
  late final id;
  late final transaction;
  late final month;
  late final time;
  late final type;

  Model({
    required this.id,
    required this.transaction,
    required this.month,
    required this.time,
    required this.type

  });

}*/

class Model {
  late final id;
  late final transaction;
  late final month;
  late final time;
  late final types;

  Model({
    required this.id,
    required this.transaction,
    required this.month,
    required this.time,
    required this.types

  });

  Model.fromMap(Map<String, dynamic> result)
      : id = result["id"],
        transaction = result["trans"],
        month = result["month"],
        time = result["time"],
        types = result["type"];
  Map<String, Object> toMap() {
    return {
      'id': id,
      'trans': transaction,
      'month': month,
      'time': time,
      'type' : types
    };
  }
}