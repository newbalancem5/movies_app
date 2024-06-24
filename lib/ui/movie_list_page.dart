import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie/movie_bloc.dart';
import 'package:movies_app/bloc/movie/movie_event/movie_event.dart';
import 'package:movies_app/bloc/movie/movie_state/movie_state.dart';
import 'package:movies_app/components/movie_card.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  @override
  void initState() {
    super.initState();
    // Инициируем загрузку популярных фильмов при первой загрузке
    context.read<MovieBloc>().add(const MovieEvent.fetchPopularMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Популярные фильмы'),
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            return GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                final movie = state.movies[index];
                return MovieCard(movie: movie);
              },
            );
          } else if (state is Error) {
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('Нет данных для отображения'));
          }
        },
      ),
    );
  }
}
