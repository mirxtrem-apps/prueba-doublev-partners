
import '/core/utils/date_time_utils.dart';
import '/features/user/domain/entities/user_entity.dart';
import '/features/user/domain/value_obj/email_address.dart';
import '/features/user/infrastructure/models/user_model.dart';
import '/features/user/application/mappers/address_mapper.dart';

abstract class UserMapper {
  static UserEntity toEntity(UserModel dto) => dto.toDomain();
  static UserModel toModel(UserEntity entity) => entity.toModel();
}

extension UserEntityExt on UserEntity {
  UserModel toModel() {
    return UserModel(
      id: id!,
      firstname: firstname,
      lastname: lastname,
      email: email.value,
      birthdate: DateTimeUtils.toDateTime(birthdate) ,
      addresses: [],
    );
  }
}

extension UserDtoExt on UserModel {
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      email: EmailAddress(value: email),
      birthdate: DateTimeUtils.toIsoString(birthdate),
      addresses: addresses.map((model) => model.toDomain()).toList(),
    );
  }
}
