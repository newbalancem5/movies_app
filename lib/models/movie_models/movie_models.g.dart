// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
    };
