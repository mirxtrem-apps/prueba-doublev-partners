import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_app_event.dart';
part 'main_app_state.dart';
part 'main_app_bloc.freezed.dart';

class MainAppBloc extends Bloc<MainAppEvent, MainAppState> {
  MainAppBloc() : super(const _Initial()) {
    on<MainAppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
