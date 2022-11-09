import 'package:flutter/cupertino.dart';
import 'package:moviapp/model/playinnowmovie_model.dart';
import 'package:moviapp/services/playinmovie_api.dart';

class PlayinMovieListview extends ChangeNotifier {
  List<PlayinMovieModel> playingmoviemodelview=[];
   fetchdata() async {
    playingmoviemodelview = await PlayinMovieApi().getplayingmoviedata();
    notifyListeners();
  }
}

class Similarview extends ChangeNotifier {
  List<PlayinMovieModel> playingmoviemodelview=[];
   fetchdata(id) async {
    playingmoviemodelview = await Similar().getplayingmoviedata(id);
    notifyListeners();
  }
}
