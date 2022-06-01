import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:equatable/equatable.dart';

part 'internetconnection_event.dart';
part 'internetconnection_state.dart';

class InternetconnectionBloc
    extends Bloc<InternetconnectionEvent, InternetconnectionState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;
  InternetconnectionBloc({required this.connectivity})
      : super(InternetconnectionInitial()) {
    on<CheckConnectivity>(_handleConnection);
  }

  Future<void> _handleConnection(event, emit) async {
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi ||
          connectivityResult == ConnectivityResult.mobile) {
        emit(InternetConnectedState());
      } else if (connectivityResult == ConnectivityResult.none) {
        emit(InternetDisconnectedState());
      }
    });
  }
}
