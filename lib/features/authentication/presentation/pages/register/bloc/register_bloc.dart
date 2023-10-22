import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/register_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUserUseCase registerUserUseCase;

  RegisterBloc({
    required this.registerUserUseCase,
  }) : super(const _Initial()) {
    on<RegisterEvent>((event, emit) {
       registerUserUseCase();
    });
  }
}
