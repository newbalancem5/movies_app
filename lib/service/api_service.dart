import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://api.themoviedb.org/3';

  ApiService() {
    _dio.options.baseUrl = _baseUrl;
  }

  Future<Response> getPopularMovies() async {
    final apiKey = dotenv.env['TMDB_API_KEY'];
    if (apiKey == null) {
      throw Exception('TMDB_API_KEY не найден .env ');
    }
    return await _dio.get('/movie/popular', queryParameters: {'api_key': apiKey});
  }

  Future<Response> searchMovies(String query) async {
    final apiKey = dotenv.env['TMDB_API_KEY'];
    if (apiKey == null) {
      throw Exception('TMDB_API_KEY не найден .env ');
    }
    return await _dio.get('/search/movie', queryParameters: {'api_key': apiKey, 'query': query});
  }
}
