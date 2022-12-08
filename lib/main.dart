import 'package:al_jad_test/blocs/realestate/realestate_bloc.dart';
import 'package:al_jad_test/ui/pages/realestates_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'بيتي',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        lazy: false,
        create: (BuildContext context) => RealestateBloc(),
        child: const RealestatePage(),
      ),
      // home: const HomePage(),
    );
  }
}
