import 'package:flutter/cupertino.dart';
import 'package:moviapp/model/topratedmoviesmodel.dart';
import 'package:moviapp/services/topratedmovies.dart';

class TopRatedMoviesList extends ChangeNotifier {
  List<TopRatedMoviesModel> toprated = [];
  Future fetchtopdata() async {
    toprated = await TopRatedMoviesApi().fetchtopratedmoviesapi();
    notifyListeners();
  }
}
