import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/bloc/movie/movie_bloc.dart';
import 'package:movies_app/bloc/movie/movie_event/movie_event.dart';
import 'package:movies_app/service/api_service.dart';
import 'package:movies_app/ui/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieBloc>(
          create: (context) => MovieBloc(GetIt.instance<ApiService>())..add(const MovieEvent.fetchPopularMovies()),
        ),
      ],
      child: MaterialApp(
        title: 'Movie App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
