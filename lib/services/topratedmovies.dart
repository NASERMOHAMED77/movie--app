import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:moviapp/model/topratedmoviesmodel.dart';

class TopRatedMoviesApi extends ChangeNotifier {
  var url = Uri.parse(
      'https://api.themoviedb.org/3/movie/top_rated?api_key=3bde688d09fec315b1bc2ce62084a282&language=en-US&page=1');
  Future<List<TopRatedMoviesModel>> fetchtopratedmoviesapi() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        TopRatedMoviesResults results =
            TopRatedMoviesResults.fromJson(responsebody);
        List<TopRatedMoviesModel> topratedmovieslist = results.results
            .map((e) => TopRatedMoviesModel.fromJson(e))
            .toList();
        notifyListeners();
        return topratedmovieslist;
      } else {
        throw (response.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }
}
