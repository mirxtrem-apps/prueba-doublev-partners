part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.userRegistered() = _UserRegisteredState;
  const factory AuthState.userCreated() = _UserCreatedState;
  const factory AuthState.failure(String message) =
      _RegisterFailureState;
}
