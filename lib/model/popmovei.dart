// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

// @JsonSerializable()
class PopMovies {
  List<dynamic> results;
  PopMovies({
    required this.results,
  });
  factory PopMovies.fromJson(Map<String, dynamic> data) {
    return PopMovies(results: data['results']);
  }
}

class Movie {
  late bool adult;
  late String title;
  late String overview;
  late var vote;
  late String image;
  late String data;
  late int id;

  Movie({
    required this.adult,
    required this.title,
    required this.overview,
    required this.vote,
    required this.image,
    required this.data,
    required this.id,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      title: json['original_title'],
      vote: json['vote_average'],
      image: json['poster_path'],
      overview: json['overview'],
      data: json['release_date'],
      id: json['id'],
    );
  }
}
