import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie/movie_event/movie_event.dart';
import 'package:movies_app/bloc/movie/movie_state/movie_state.dart';
import 'package:movies_app/models/movie_models/movie_models.dart';
import 'package:movies_app/service/api_service.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final ApiService apiService;

  MovieBloc(this.apiService) : super(const MovieState.initial()) {
    on<FetchPopularMovies>(_onFetchPopularMovies);
    on<SearchMovies>(_onSearchMovies);
    on<ClearSearch>(_onClearSearch);
  }

  void _onFetchPopularMovies(FetchPopularMovies event, Emitter<MovieState> emit) async {
    emit(const MovieState.loading());
    try {
      final response = await apiService.getPopularMovies();
      final movies = (response.data['results'] as List).map((movie) => Movie.fromJson(movie)).toList();
      emit(MovieState.loaded(movies));
    } catch (e) {
      emit(const MovieState.error('Не удалось загрузить фильмы'));
    }
  }

  void _onSearchMovies(SearchMovies event, Emitter<MovieState> emit) async {
    emit(const MovieState.loading());
    try {
      final response = await apiService.searchMovies(event.query);
      final movies = (response.data['results'] as List).map((movie) => Movie.fromJson(movie)).toList();
      emit(MovieState.loaded(movies));
    } catch (e) {
      emit(const MovieState.error('Не удалось найти фильмы'));
    }
  }

  void _onClearSearch(ClearSearch event, Emitter<MovieState> emit) {
    emit(const MovieState.initial());
    add(const FetchPopularMovies());
  }
}
