import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/bloc/internet%20BLoC/internetconnection_bloc.dart';

import 'business_logic/bloc/recipe BLoC/recipe_bloc.dart';
import 'business_logic/bloc/recipe%20BLoC/recipe_events.dart';
import 'presentation/screens/home.dart';

void main() {
  runApp(MyApp(connectivity: Connectivity()));
}

class MyApp extends StatelessWidget {
  final Connectivity connectivity;
  MyApp({Key? key, required this.connectivity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              InternetconnectionBloc(connectivity: connectivity)
                ..add(CheckConnectivity()),
        ),
        BlocProvider(
          create: (context) => RecipeBloc()..add(GetRecipies(query: "chicken")),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Recipe App'),
      ),
    );
  }
}
