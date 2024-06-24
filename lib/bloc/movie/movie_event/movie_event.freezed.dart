// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPopularMovies,
    required TResult Function(String query) searchMovies,
    required TResult Function() clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPopularMovies,
    TResult? Function(String query)? searchMovies,
    TResult? Function()? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPopularMovies,
    TResult Function(String query)? searchMovies,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(SearchMovies value) searchMovies,
    required TResult Function(ClearSearch value) clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(SearchMovies value)? searchMovies,
    TResult? Function(ClearSearch value)? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(SearchMovies value)? searchMovies,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res, MovieEvent>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res, $Val extends MovieEvent>
    implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPopularMoviesImplCopyWith<$Res> {
  factory _$$FetchPopularMoviesImplCopyWith(_$FetchPopularMoviesImpl value,
          $Res Function(_$FetchPopularMoviesImpl) then) =
      __$$FetchPopularMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPopularMoviesImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$FetchPopularMoviesImpl>
    implements _$$FetchPopularMoviesImplCopyWith<$Res> {
  __$$FetchPopularMoviesImplCopyWithImpl(_$FetchPopularMoviesImpl _value,
      $Res Function(_$FetchPopularMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPopularMoviesImpl implements FetchPopularMovies {
  const _$FetchPopularMoviesImpl();

  @override
  String toString() {
    return 'MovieEvent.fetchPopularMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPopularMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPopularMovies,
    required TResult Function(String query) searchMovies,
    required TResult Function() clearSearch,
  }) {
    return fetchPopularMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPopularMovies,
    TResult? Function(String query)? searchMovies,
    TResult? Function()? clearSearch,
  }) {
    return fetchPopularMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPopularMovies,
    TResult Function(String query)? searchMovies,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (fetchPopularMovies != null) {
      return fetchPopularMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(SearchMovies value) searchMovies,
    required TResult Function(ClearSearch value) clearSearch,
  }) {
    return fetchPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(SearchMovies value)? searchMovies,
    TResult? Function(ClearSearch value)? clearSearch,
  }) {
    return fetchPopularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(SearchMovies value)? searchMovies,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (fetchPopularMovies != null) {
      return fetchPopularMovies(this);
    }
    return orElse();
  }
}

abstract class FetchPopularMovies implements MovieEvent {
  const factory FetchPopularMovies() = _$FetchPopularMoviesImpl;
}

/// @nodoc
abstract class _$$SearchMoviesImplCopyWith<$Res> {
  factory _$$SearchMoviesImplCopyWith(
          _$SearchMoviesImpl value, $Res Function(_$SearchMoviesImpl) then) =
      __$$SearchMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchMoviesImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$SearchMoviesImpl>
    implements _$$SearchMoviesImplCopyWith<$Res> {
  __$$SearchMoviesImplCopyWithImpl(
      _$SearchMoviesImpl _value, $Res Function(_$SearchMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchMoviesImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMoviesImpl implements SearchMovies {
  const _$SearchMoviesImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MovieEvent.searchMovies(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMoviesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMoviesImplCopyWith<_$SearchMoviesImpl> get copyWith =>
      __$$SearchMoviesImplCopyWithImpl<_$SearchMoviesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPopularMovies,
    required TResult Function(String query) searchMovies,
    required TResult Function() clearSearch,
  }) {
    return searchMovies(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPopularMovies,
    TResult? Function(String query)? searchMovies,
    TResult? Function()? clearSearch,
  }) {
    return searchMovies?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPopularMovies,
    TResult Function(String query)? searchMovies,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(SearchMovies value) searchMovies,
    required TResult Function(ClearSearch value) clearSearch,
  }) {
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(SearchMovies value)? searchMovies,
    TResult? Function(ClearSearch value)? clearSearch,
  }) {
    return searchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(SearchMovies value)? searchMovies,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class SearchMovies implements MovieEvent {
  const factory SearchMovies(final String query) = _$SearchMoviesImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchMoviesImplCopyWith<_$SearchMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchImplCopyWith<$Res> {
  factory _$$ClearSearchImplCopyWith(
          _$ClearSearchImpl value, $Res Function(_$ClearSearchImpl) then) =
      __$$ClearSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$ClearSearchImpl>
    implements _$$ClearSearchImplCopyWith<$Res> {
  __$$ClearSearchImplCopyWithImpl(
      _$ClearSearchImpl _value, $Res Function(_$ClearSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSearchImpl implements ClearSearch {
  const _$ClearSearchImpl();

  @override
  String toString() {
    return 'MovieEvent.clearSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPopularMovies,
    required TResult Function(String query) searchMovies,
    required TResult Function() clearSearch,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPopularMovies,
    TResult? Function(String query)? searchMovies,
    TResult? Function()? clearSearch,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPopularMovies,
    TResult Function(String query)? searchMovies,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(SearchMovies value) searchMovies,
    required TResult Function(ClearSearch value) clearSearch,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(SearchMovies value)? searchMovies,
    TResult? Function(ClearSearch value)? clearSearch,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(SearchMovies value)? searchMovies,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class ClearSearch implements MovieEvent {
  const factory ClearSearch() = _$ClearSearchImpl;
}
