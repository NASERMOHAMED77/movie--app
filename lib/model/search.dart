import 'package:flutter/material.dart';
import 'package:moviapp/model/playinnowmovie_model.dart';
import 'package:moviapp/services/playinmovie_api.dart';

class MovieSearch {
  final String title;
  final String image;

  MovieSearch(this.title, this.image);
}

class PlayinMovieListvieww extends ChangeNotifier {
  List<PlayinMovieModel> movies = [];
  fetchdata() async {
    movies = await PlayinMovieApi().getplayingmoviedata();
    notifyListeners();
  }
}

List movieall = PlayinMovieListvieww().movies;
