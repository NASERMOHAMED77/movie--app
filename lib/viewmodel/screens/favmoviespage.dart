import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviapp/view/companat/popular_movie_listwidget.dart';

class FavMoviePage extends StatefulWidget {
  const FavMoviePage({super.key});

  @override
  State<FavMoviePage> createState() => _FavMoviePageState();
}

class _FavMoviePageState extends State<FavMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'My Favoriates Movies',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              UserFaMovieList(),
              UserFaMovieTopList(),
            ],
          ),
        ),
      ),
    );
  }
}
