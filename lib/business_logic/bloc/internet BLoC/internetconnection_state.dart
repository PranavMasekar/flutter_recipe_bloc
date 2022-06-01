part of 'internetconnection_bloc.dart';

abstract class InternetconnectionState extends Equatable {
  const InternetconnectionState();

  @override
  List<Object> get props => [];
}

class InternetconnectionInitial extends InternetconnectionState {}

class InternetConnectedState extends InternetconnectionState {}

class InternetDisconnectedState extends InternetconnectionState {}
