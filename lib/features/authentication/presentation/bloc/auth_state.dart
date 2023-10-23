part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.userRegistered({
    required UserCredential userCredential,
  }) = _UserRegisteredState;
  const factory AuthState.userCreated() = _UserCreatedState;
  const factory AuthState.userUpdated() = _UserUpdatedState;
  const factory AuthState.failure(String message) = _AuthFailureState;
}
