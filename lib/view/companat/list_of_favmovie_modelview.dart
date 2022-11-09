import 'package:flutter/cupertino.dart';
import 'package:moviapp/model/playinnowmovie_model.dart';
import 'package:moviapp/model/popmovei.dart';
import 'package:moviapp/model/topratedmoviesmodel.dart';

class FavMovieList extends ChangeNotifier {
  List<PlayinMovieModel> favmoviemodelview = [];
  void addmovie(PlayinMovieModel favmovie) {
    favmoviemodelview.add(favmovie);
    print('added');
    print(favmoviemodelview[0]);

    notifyListeners();
  }
}


class FavMovieTopRatedList extends ChangeNotifier {
  List<TopRatedMoviesModel> favmoviemodelview = [];
  void addmovie(TopRatedMoviesModel favmovie) {
    favmoviemodelview.add(favmovie);
    print('added');
    print(favmoviemodelview[0]);

    notifyListeners();
  }
}