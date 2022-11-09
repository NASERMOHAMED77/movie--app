import 'package:flutter/cupertino.dart';
import 'package:moviapp/model/popmovei.dart';
import 'package:moviapp/services/popmovieapi.dart';

class PopMoviesList extends ChangeNotifier {
  List<Movie> popmovieslist = [];
  fetchdatapop() async {
    popmovieslist = await PopularMovie().getdata();
    notifyListeners();
  }


}
