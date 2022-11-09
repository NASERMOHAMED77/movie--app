// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

// @JsonSerializable()
class TopRatedMoviesResults {
  List<dynamic> results;
  TopRatedMoviesResults({
    required this.results,
  });
  factory TopRatedMoviesResults.fromJson(Map<String, dynamic> data) {
    return TopRatedMoviesResults(results: data['results']);
  }
}

class TopRatedMoviesModel {
  late bool adult;
  late String title;
  late String overview;
  late var vote;
  late String image;
  late String data;

  TopRatedMoviesModel({
    required this.adult,
    required this.title,
    required this.overview,
    required this.vote,
    required this.image,
    required this.data,
  });

  factory TopRatedMoviesModel.fromJson(Map<String, dynamic> json) {
    return TopRatedMoviesModel(
        adult: json['adult'],
        title: json['original_title'],
        vote: json['vote_average'],
        image: json['poster_path'],
        overview: json['overview'],
        data: json['release_date']);
  }
}
