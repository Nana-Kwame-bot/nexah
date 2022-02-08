import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'appliance_control_event.dart';

part 'appliance_control_state.dart';

class ApplianceControlBloc
    extends HydratedBloc<ApplianceControlEvent, ApplianceControlState> {
  ApplianceControlBloc() : super(const ApplianceControlState()) {
    on<LightChangeSuccess>(_onLightChangeSuccess);
    on<FanChangeSuccess>(_onFanChangeSuccess);
    on<ACUnitChangeSuccess>(_onACUnitChangeSuccess);
    on<TVChangeSuccess>(_onTVChangeSuccess);
    on<FridgeChangeSuccess>(_onFridgeChangeSuccess);
    on<MusicSystemsChangeSuccess>(_onMusicSystemsChangeSuccess);
  }

  FutureOr<void> _onLightChangeSuccess(
      LightChangeSuccess event, Emitter<ApplianceControlState> emit) {
    emit(state.copyWith(isLightActive: event.value));
  }

  FutureOr<void> _onFanChangeSuccess(
      FanChangeSuccess event, Emitter<ApplianceControlState> emit) {
    emit(state.copyWith(isFanActive: event.value));
  }

  FutureOr<void> _onACUnitChangeSuccess(
      ACUnitChangeSuccess event, Emitter<ApplianceControlState> emit) {
    emit(state.copyWith(isACUnitActive: event.value));
  }

  FutureOr<void> _onTVChangeSuccess(
      TVChangeSuccess event, Emitter<ApplianceControlState> emit) {
    emit(state.copyWith(isTVActive: event.value));
  }

  FutureOr<void> _onFridgeChangeSuccess(
      FridgeChangeSuccess event, Emitter<ApplianceControlState> emit) {
    emit(state.copyWith(isFridgeActive: event.value));
  }

  FutureOr<void> _onMusicSystemsChangeSuccess(
      MusicSystemsChangeSuccess event, Emitter<ApplianceControlState> emit) {
    emit(state.copyWith(isMusicSystemActive: event.value));
  }

  @override
  ApplianceControlState? fromJson(Map<String, dynamic> json) {
    return ApplianceControlState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ApplianceControlState state) {
    return state.toMap();
  }
}
