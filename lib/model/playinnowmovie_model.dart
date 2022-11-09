// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlayingMoviesResults {
  List<dynamic> playingmovieresults;
  PlayingMoviesResults({
    required this.playingmovieresults,
  });
  factory PlayingMoviesResults.fromJson(Map<String, dynamic> json) {
    return PlayingMoviesResults(playingmovieresults: json['results']);
  }
}

class PlayinMovieModel {
  late bool adult;
  late String title;
  late String data;
  late String overview;
  late var vote;
  late var id;
  late String image;
  PlayinMovieModel({
    required this.adult,
    required this.title,
    required this.data,
    required this.overview,
    required this.vote,
    required this.id,
    required this.image,
  });

  factory PlayinMovieModel.fromJson(Map<String, dynamic> json) {
    return PlayinMovieModel(
      adult: json['adult'],
      title: json['original_title'],
      vote: json['vote_average'],
      id: json['id'],
      image: json['poster_path'],
      overview: json['overview'],
      data: json['release_date'],
    );
  }
}
