part of 'appliance_control_bloc.dart';

abstract class ApplianceControlEvent extends Equatable {
  const ApplianceControlEvent();

  @override
  bool? get stringify => true;
}

class LightChangeSuccess extends ApplianceControlEvent {
  final bool value;

  const LightChangeSuccess({required this.value});

  @override
  List<Object> get props => [value];
}

class FanChangeSuccess extends ApplianceControlEvent {
  final bool value;

  const FanChangeSuccess({required this.value});

  @override
  List<Object> get props => [value];
}

class ACUnitChangeSuccess extends ApplianceControlEvent {
  final bool value;

  const ACUnitChangeSuccess({required this.value});

  @override
  List<Object> get props => [value];
}

class TVChangeSuccess extends ApplianceControlEvent {
  final bool value;

  const TVChangeSuccess({required this.value});

  @override
  List<Object> get props => [value];
}

class FridgeChangeSuccess extends ApplianceControlEvent {
  final bool value;

  const FridgeChangeSuccess({required this.value});

  @override
  List<Object> get props => [value];
}

class MusicSystemsChangeSuccess extends ApplianceControlEvent {
  final bool value;

  const MusicSystemsChangeSuccess({required this.value});

  @override
  List<Object> get props => [value];
}
