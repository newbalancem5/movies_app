import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_event.freezed.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.fetchPopularMovies() = FetchPopularMovies;
  const factory MovieEvent.searchMovies(String query) = SearchMovies;
  const factory MovieEvent.clearSearch() = ClearSearch;
}
