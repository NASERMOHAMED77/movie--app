import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:moviapp/model/playinnowmovie_model.dart';

class PlayinMovieApi extends ChangeNotifier {
  var url = Uri.parse(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=3bde688d09fec315b1bc2ce62084a282&language=en-US');
  Future<List<PlayinMovieModel>> getplayingmoviedata() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        PlayingMoviesResults results =
            PlayingMoviesResults.fromJson(responsebody);
        List<PlayinMovieModel> playingmovieslist =
         results.playingmovieresults
            .map((e) => PlayinMovieModel.fromJson(e))
            .toList();
        notifyListeners();

        return playingmovieslist;
      } else {
        throw (response.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }
}

class Similar extends ChangeNotifier {
  Future<List<PlayinMovieModel>> getplayingmoviedata(int id) async {
    try {
      var url = Uri.parse(
          'https://api.themoviedb.org/3/movie/$id/similar?api_key=3bde688d09fec315b1bc2ce62084a282&language=en-US&page=1');
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        PlayingMoviesResults results =
            PlayingMoviesResults.fromJson(responsebody);
        List<PlayinMovieModel> playingmovieslist = results.playingmovieresults
            .map((e) => PlayinMovieModel.fromJson(e))
            .toList();
        notifyListeners();

        return playingmovieslist;
      } else {
        throw (response.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }
}
