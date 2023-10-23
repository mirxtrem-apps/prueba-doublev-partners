import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart' show Timestamp;

import '/core/utils/date_time_converter.dart';
import '/features/user/infrastructure/models/address_model.dart';

part 'user_model.g.dart';

@JsonSerializable(converters: [DateTimeConverter()], explicitToJson: true)
class UserModel {
  String id;
  String firstname;
  String lastname;
  DateTime birthdate;
  String email;
  List<AddressModel> addresses;

  UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.birthdate,
    required this.addresses,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
