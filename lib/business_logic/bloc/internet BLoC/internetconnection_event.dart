part of 'internetconnection_bloc.dart';

abstract class InternetconnectionEvent extends Equatable {
  InternetconnectionEvent();

  @override
  List<Object> get props => [];
}

class CheckConnectivity extends InternetconnectionEvent {}
