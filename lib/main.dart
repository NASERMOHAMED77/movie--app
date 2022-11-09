import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moviapp/model/singin.dart';
import 'package:moviapp/view/companat/list_of_favmovie_modelview.dart';
import 'package:moviapp/view/list_of_playing_movies_modelview.dart';
import 'package:moviapp/view/list_of_popmovies_modelview.dart';
import 'package:moviapp/view/list_of_topratedmovies_modelmovies.dart';
import 'package:moviapp/viewmodel/screens/splash_screen.dart';
import 'package:provider/provider.dart';
   
Future main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PopMoviesList>(
          create: (context) => PopMoviesList(),
        ),
        ChangeNotifierProvider<PlayinMovieListview>(
          create: (context) => PlayinMovieListview(),
        ),
        ChangeNotifierProvider<TopRatedMoviesList>(
          create: (context) => TopRatedMoviesList(),
        ),
        ChangeNotifierProvider<FavMovieList>(
          create: (context) => FavMovieList(),
        ),
        ChangeNotifierProvider<FavMovieTopRatedList>(
          create: (context) => FavMovieTopRatedList(),
        ),
        ChangeNotifierProvider<SingInWithEmail>(
          create: (context) => SingInWithEmail(),
        ),ChangeNotifierProvider<Similarview>(
          create: (context) => Similarview(),
        )
      ],
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplahScreen(),
    );
  }
}
