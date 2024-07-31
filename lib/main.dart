import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openweatherapp/domain/domain.dart';
import 'package:openweatherapp/presentation/logic/logic.dart';
import 'package:openweatherapp/presentation/ui/ui.dart';

import 'data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<WeatherCubit>(
        create: (blocContext) => WeatherCubit(
          FetchWeatherUseCase(
            WeatherRepositoryImpl(
              WeatherApiService(),
            ),
          ),
        ),
        child: const WeatherScreen(),
      ),
      // home: const WeatherScreen(),
    );
  }
}
