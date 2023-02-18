part of 'nav_bloc.dart';

/// {@template nav_state}
/// NavState description
/// {@endtemplate}
class NavState {
  /// {@macro nav_state}
  const NavState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  /// Creates a copy of the current NavState with property changes
  NavState copyWith({
    String? customProperty,
  }) {
    return NavState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template nav_initial}
/// The initial state of NavState
/// {@endtemplate}
class NavInitial extends NavState {
  /// {@macro nav_initial}
  const NavInitial() : super();
}
