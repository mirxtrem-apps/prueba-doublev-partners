import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '/core/app/domain/entities/i_entity.dart';
import '/features/user/domain/value_obj/address.dart';
import '/features/user/domain/value_obj/email_address.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  @Implements<IEntity>()
  factory UserEntity._({
    String? id,
    required String firstname,
    required String lastname,
    required String birthdate,
    required EmailAddress email,
    required List<Address> addresses,
  }) = _UserEntity;

  factory UserEntity({
    String? id,
    required String firstname,
    required String lastname,
    required String birthdate,
    required EmailAddress email,
    List<Address>? addresses,
  }) {
    return UserEntity._(
      id: id ??= const Uuid().v4(),
      firstname: firstname,
      lastname: lastname,
      email: email,
      birthdate: birthdate,
      addresses: addresses ?? [],
    );
  }
}
