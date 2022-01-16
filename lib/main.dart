import 'package:flutter/material.dart';
import 'package:grintech/page_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grintech/blocs/login_bloc/login_bloc.dart';
import 'package:grintech/blocs/wallet_bloc/wallet_bloc.dart';
import 'package:grintech/providers/api_provider.dart';
import 'package:grintech/repositories/main_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<MainRepository>(
          create: (context) => MainRepository(),
          lazy: true,
        ),
        RepositoryProvider<ApiProvider>(
          create: (context) => ApiProvider(),
          lazy: true,
        ),
      ],
      child: MultiBlocProvider  (
        providers: [
          BlocProvider<LoginBloc>(
            create: (context)  => LoginBloc(),
          ),
          BlocProvider<WalletBloc>(
            create: (context)  => WalletBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: const Color(0xFF546AF0),
              secondary: const Color(0xFF1D2C42),
              background: const Color(0xFF151E2A)
            ),
          ),
          onGenerateRoute: PageRoutes.generateRoute,
        )
      ),
    );




  }
}

