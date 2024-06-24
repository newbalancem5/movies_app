import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/models/movie_models/movie_models.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = Initial;
  const factory MovieState.loading() = Loading;
  const factory MovieState.loaded(List<Movie> movies) = Loaded;
  const factory MovieState.error(String message) = Error;
}
