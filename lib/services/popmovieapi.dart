import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moviapp/model/popmovei.dart';

class PopularMovie extends ChangeNotifier {
  var url = Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=3bde688d09fec315b1bc2ce62084a282');
  get x => getdata();
  Future<List<Movie>> getdata() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        PopMovies results = PopMovies.fromJson(responsebody);
        List<Movie> listofmovie =
            results.results.map((e) => Movie.fromJson(e)).toList();
        notifyListeners();

        return listofmovie;
      } else {
        throw (response.statusCode);
      }
    } catch (e) {
      throw ('d');
    }
  }
}
