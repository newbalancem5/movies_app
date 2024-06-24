import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie/movie_bloc.dart';
import 'package:movies_app/bloc/movie/movie_event/movie_event.dart';
import 'package:movies_app/bloc/movie/movie_state/movie_state.dart';
import 'package:movies_app/components/movie_card.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (result) async {
        context.read<MovieBloc>().add(const MovieEvent.clearSearch());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Поиск фильмов'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Введите название фильма',
                  border: OutlineInputBorder(),
                ),
                onChanged: (query) {
                  if (query.isNotEmpty) {
                    context.read<MovieBloc>().add(MovieEvent.searchMovies(query));
                  } else {
                    context.read<MovieBloc>().add(const MovieEvent.clearSearch());
                  }
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<MovieBloc, MovieState>(
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
                    return const Center(child: Text('Введите название фильма для поиска'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
