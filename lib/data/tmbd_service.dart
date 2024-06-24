// lib/data/tmdb_service.dart

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movies_app/models/movie/movie_models.dart';

class TmdbService {
  final Dio dio;
  final apiKey = dotenv.env['TMDB_API_KEY'];
  final String baseUrl = 'https://api.themoviedb.org/3';

  TmdbService(this.dio);

  Future<List<Movie>> fetchPopularMovies() async {
    try {
      final response = await dio.get('$baseUrl/movie/popular', queryParameters: {
        'api_key': apiKey,
      });

      final results = response.data['results'] as List;
      return results.map((json) => Movie.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load movies');
    }
  }

  Future<List<Movie>> searchMovies(String query) async {
    try {
      final response = await dio.get('$baseUrl/search/movie', queryParameters: {
        'api_key': apiKey,
        'query': query,
      });

      final results = response.data['results'] as List;
      return results.map((json) => Movie.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to search movies');
    }
  }
}
