import 'package:al_jad_test/blocs/realestate/realestate_bloc.dart';
import 'package:al_jad_test/injection_container.dart';
import 'package:al_jad_test/ui/pages/realestates_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: const Locale('ar', 'AE'),
      home: BlocProvider(
        lazy: false,
        create: (BuildContext context) => RealestateBloc(apiRepository: di()),
        child: const RealestatePage(),
      ),
      //  MultiBlocProvider(
      //   providers: [
      //     BlocProvider(
      //         create: (context) => RealestateBloc(apiRepository: di())),
      //   ],
      //   child: const RealestatePage(),
      // )
    );
  }
}
