part of 'appliance_control_bloc.dart';

class ApplianceControlState extends Equatable {
  @override
  List<Object> get props => [
        isLightActive,
        isFanActive,
        isACUnitActive,
        isTVActive,
        isFridgeActive,
        isMusicSystemActive,
      ];

  final bool isLightActive;
  final bool isFanActive;
  final bool isACUnitActive;
  final bool isTVActive;
  final bool isFridgeActive;
  final bool isMusicSystemActive;

  const ApplianceControlState({
    this.isLightActive = false,
    this.isFanActive = false,
    this.isACUnitActive = false,
    this.isTVActive = false,
    this.isFridgeActive = false,
    this.isMusicSystemActive = false,
  });

  ApplianceControlState copyWith({
    bool? isLightActive,
    bool? isFanActive,
    bool? isACUnitActive,
    bool? isTVActive,
    bool? isFridgeActive,
    bool? isMusicSystemActive,
  }) {
    return ApplianceControlState(
      isLightActive: isLightActive ?? this.isLightActive,
      isFanActive: isFanActive ?? this.isFanActive,
      isACUnitActive: isACUnitActive ?? this.isACUnitActive,
      isTVActive: isTVActive ?? this.isTVActive,
      isFridgeActive: isFridgeActive ?? this.isFridgeActive,
      isMusicSystemActive: isMusicSystemActive ?? this.isMusicSystemActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isLightActive': isLightActive,
      'isFanActive': isFanActive,
      'isACUnitActive': isACUnitActive,
      'isTVActive': isTVActive,
      'isFridgeActive': isFridgeActive,
      'isMusicSystemActive': isMusicSystemActive,
    };
  }

  factory ApplianceControlState.fromMap(Map<String, dynamic> map) {
    return ApplianceControlState(
      isLightActive: map['isLightActive'] as bool,
      isFanActive: map['isFanActive'] as bool,
      isACUnitActive: map['isACUnitActive'] as bool,
      isTVActive: map['isTVActive'] as bool,
      isFridgeActive: map['isFridgeActive'] as bool,
      isMusicSystemActive: map['isMusicSystemActive'] as bool,
    );
  }

  @override
  bool? get stringify => true;
}
