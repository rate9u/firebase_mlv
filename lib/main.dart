import 'package:firebasescantextapp/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/scan_bloc.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScanApp Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  MultiBlocProvider(
        providers: [
          BlocProvider<ScanBloc>(
            create: (BuildContext context) => ScanBloc(),
          ),
        ],
        child:  HomePage(),
      )
    );
  }
}

