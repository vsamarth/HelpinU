part of 'db_bloc.dart';

/// {@template db_state}
/// DbState description
/// {@endtemplate}
class DbState extends Equatable {
  /// {@macro db_state}
  const DbState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current DbState with property changes
  DbState copyWith({
    String? customProperty,
  }) {
    return DbState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template db_initial}
/// The initial state of DbState
/// {@endtemplate}
class DbInitial extends DbState {
  /// {@macro db_initial}
  const DbInitial() : super();
}
