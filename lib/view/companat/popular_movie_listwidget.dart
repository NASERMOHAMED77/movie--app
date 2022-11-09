// ignore_for_file: public_member_api_docs, sort_constructors_first, sized_box_for_whitespace
// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moviapp/view/companat/list_of_favmovie_modelview.dart';
import 'package:moviapp/view/list_of_topratedmovies_modelmovies.dart';
import 'package:moviapp/viewmodel/screens/de.dart';
import 'package:provider/provider.dart';
import 'package:moviapp/view/list_of_playing_movies_modelview.dart';
import 'package:moviapp/view/list_of_popmovies_modelview.dart';

class PopularMovieList extends StatelessWidget {
  const PopularMovieList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var x = Provider.of<PopMoviesList>(context).fetchdatapop();
    return Consumer<PopMoviesList>(builder: ((context, value, child) {
      return Container(
        height: 350,
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: ListView.builder(
            itemCount: value.popmovieslist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Container(
                padding: EdgeInsets.only(left: 1, bottom: 10),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 450,
                      width: 398,
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl:
                                    'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                        value.popmovieslist[index].image,
                                placeholder: (context, url) => Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'images/p.png',
                                      fit: BoxFit.fill,
                                      height: double.infinity,
                                    ),
                                    CircularProgressIndicator()
                                  ],
                                ),
                              ),
                              // Image(
                              //     fit: BoxFit.fill,
                              //     image: NetworkImage(
                              // ignore: prefer_interpolation_to_compose_strings
                              //         'https://images.moviemeter.nl/tmdb/t/p/original/' +
                              //             value.popmovieslist[index].image)),
                            ),
                          ),
                          // Positioned(
                          //     bottom: 0,
                          //     child: Row(
                          //       children: [
                          //         Container(
                          //           height: 70,
                          //           width: 400,
                          //           color: Colors.black,
                          //           child: Column(
                          //             children: [
                          //               SizedBox(
                          //                 height: 5,
                          //               ),
                          //               Text(
                          //                 value.popmovieslist[index].title,
                          //                 style: TextStyle(
                          //                     color: Colors.white,
                          //                     fontSize: 18,
                          //                     fontWeight: FontWeight.w700,
                          //                     letterSpacing: 1),
                          //               ),
                          //               SizedBox(
                          //                 height: 5,
                          //               ),
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.center,
                          //                 children: [
                          //                   Icon(
                          //                     Icons.star,
                          //                     color: Colors.amber,
                          //                   ),
                          //                   Text(
                          //                     value.popmovieslist[index].vote
                          //                         .toString(),
                          //                     style: TextStyle(
                          //                         color: Colors.grey,
                          //                         fontSize: 15,
                          //                         fontWeight: FontWeight.w700,
                          //                         letterSpacing: 1),
                          //                   ),
                          //                   SizedBox(
                          //                     width: 10,
                          //                   ),
                          //                   Text(
                          //                     value.popmovieslist[index].data,
                          //                     style: TextStyle(
                          //                         color: Colors.grey,
                          //                         fontSize: 15,
                          //                         fontWeight: FontWeight.w700,
                          //                         letterSpacing: 1),
                          //                   ),
                          //                   SizedBox(
                          //                     width: 10,
                          //                   ),
                          //                   Text(
                          //                     value.popmovieslist[index].adult
                          //                                 .toString() ==
                          //                             'false'
                          //                         ? 'PG-13'
                          //                         : '+18',
                          //                     style: TextStyle(
                          //                         color: Colors.grey,
                          //                         fontSize: 15,
                          //                         fontWeight: FontWeight.w700,
                          //                         letterSpacing: 1),
                          //                   ),
                          //                 ],
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ],
                          //     ))
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Container(
                        height: 120,
                        width: 100,
                        // ignore: prefer_const_literals_to_create_immutables
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              spreadRadius: -8,
                              blurRadius: 10,
                              offset: Offset(
                                -3,
                                -10,
                              ),
                              color: Colors.black.withOpacity(.5))
                        ]),
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                      value.popmovieslist[index].image,
                              placeholder: (context, url) => Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'images/p.png',
                                    fit: BoxFit.fill,
                                    height: double.infinity,
                                  ),
                                  CircularProgressIndicator()
                                ],
                              ),
                            ),
                            Positioned(
                              top: -8,
                              left: -10,
                              child: Stack(
                                alignment: Alignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.bookmark,
                                    size: 40,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 110,
                        left: 170,
                        child: Icon(
                          Icons.play_circle_filled_rounded,
                          size: 80,
                          color: Colors.white.withOpacity(.5),
                        ))
                  ],
                ),
              );
            })),
      );
    }));
  }
}

class PlayinMovieListui extends StatefulWidget {
  const PlayinMovieListui({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayinMovieListui> createState() => _PlayinMovieListuiState();
}

class _PlayinMovieListuiState extends State<PlayinMovieListui> {
  @override
  Widget build(BuildContext context) {
    var y = Provider.of<PlayinMovieListview>(context).fetchdata();
    bool xx = true;
    return Consumer<PlayinMovieListview>(builder: ((context, value, child) {
      return Container(
        height: 250,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.playingmoviemodelview.length,
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => De(
                            id: value.playingmoviemodelview[index].id,
                              image:
                                  'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                      value.playingmoviemodelview[index].image,
                              data: value.playingmoviemodelview[index].overview,
                              date: value.playingmoviemodelview[index].data,
                              title: value.playingmoviemodelview[index].title,
                              x: value.playingmoviemodelview[index].vote))));
                }),
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        spreadRadius: -8,
                        blurRadius: 10,
                        offset: Offset(
                          -3,
                          -10,
                        ),
                        color: Colors.grey.shade800.withOpacity(.5))
                  ]),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 130,
                            width: 130,
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                      value.playingmoviemodelview[index].image,
                              placeholder: (context, url) => Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'images/p.png',
                                    fit: BoxFit.fill,
                                    height: double.infinity,
                                  ),
                                  CircularProgressIndicator()
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Colors.black,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  value.playingmoviemodelview[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      overflow: TextOverflow.visible,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      value.playingmoviemodelview[index].vote
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      value.playingmoviemodelview[index].data,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: -8,
                        left: -1,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.bookmark,
                              size: 40,
                              color: Colors.amber,
                            ),
                            Consumer<FavMovieList>(
                              builder: ((context, x, child) {
                                return IconButton(
                                    onPressed: () {
                                      x.addmovie(
                                          value.playingmoviemodelview[index]);
                                      print(x.favmoviemodelview[index].title);
                                      xx = false;
                                      setState(() {});
                                    },
                                    icon: Icon(
                                      xx ? Icons.add : Icons.task_alt_rounded,
                                      size: 20,
                                      color: Colors.white,
                                    ));
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })),
      );
    }));
  }
}

class Defultfield extends StatelessWidget {
  const Defultfield({
    Key? key,
    required this.moviename,
  }) : super(key: key);

  final TextEditingController moviename;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: moviename,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.amber, width: 3),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          // ignore: prefer_const_constructors
          prefixIcon: Icon(
            Icons.search,
            color: Colors.amber,
          ),
          label: const Text(
            'Search ',
            style: TextStyle(
                color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class DefultfieldLogin extends StatelessWidget {
  const DefultfieldLogin({
    Key? key,
    required this.conttroller,
    required this.labletext,
    required this.hinttext,
    required this.icon,
    required this.function,
  }) : super(key: key);

  final TextEditingController conttroller;
  final String labletext;
  final String hinttext;
  final IconData icon;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: conttroller,
          validator: function(),
          decoration: InputDecoration(
            hintText: hinttext,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.amber, width: 3),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            // ignore: prefer_const_constructors
            prefixIcon: Icon(
              icon,
              color: Colors.amber,
            ),
            hintStyle: TextStyle(color: Colors.amber, fontSize: 14),
            label: Text(
              labletext,
              style: TextStyle(
                  color: Colors.amber.shade500,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}

class TopRatedMovieListui extends StatelessWidget {

  const TopRatedMovieListui({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var y = Provider.of<TopRatedMoviesList>(context).fetchtopdata();

    return Consumer<TopRatedMoviesList>(builder: ((context, value, child) {
      return Container(
        height: 250,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.toprated.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      spreadRadius: -8,
                      blurRadius: 10,
                      offset: Offset(
                        -3,
                        -10,
                      ),
                      color: Colors.grey.shade800.withOpacity(.5))
                ]),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 130,
                          width: 130,
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                    value.toprated[index].image,
                            placeholder: (context, url) => Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'images/p.png',
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                ),
                                CircularProgressIndicator()
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                value.toprated[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.visible,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    value.toprated[index].vote.toString(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    value.toprated[index].data,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      top: -8,
                      left: -1,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            size: 40,
                            color: Colors.amber,
                          ),
                          Consumer<FavMovieTopRatedList>(
                            builder: ((context, x, child) {
                              return IconButton(
                                  onPressed: () {
                                    x.addmovie(value.toprated[index]);
                                    print(x.favmoviemodelview[index].title);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.white,
                                  ));
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })),
      );
    }));
  }
}

class Play extends StatelessWidget {
  const Play({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var y = Provider.of<PlayinMovieListview>(context).playingmoviemodelview;

    return Consumer<PlayinMovieListview>(builder: ((context, value, child) {
      return Container(
        height: 250,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.playingmoviemodelview.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      spreadRadius: -8,
                      blurRadius: 10,
                      offset: Offset(
                        -3,
                        -10,
                      ),
                      color: Colors.grey.shade800.withOpacity(.5))
                ]),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 130,
                          width: 130,
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                    value.playingmoviemodelview[index].image,
                            placeholder: (context, url) => Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'images/p.png',
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                ),
                                CircularProgressIndicator()
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                value.playingmoviemodelview[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.visible,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    value.playingmoviemodelview[index].vote
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    value.playingmoviemodelview[index].data,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      top: -8,
                      left: -1,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            size: 40,
                            color: Colors.amber,
                          ),
                          Consumer<FavMovieList>(
                            builder: ((context, x, child) {
                              return IconButton(
                                  onPressed: () {
                                    x.addmovie(
                                        value.playingmoviemodelview[index]);
                                    print(x.favmoviemodelview[index].title);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.white,
                                  ));
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })),
      );
    }));
  }
}

class UserFaMovieList extends StatelessWidget {
  const UserFaMovieList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavMovieList>(builder: ((context, value, child) {
      return Container(
        height: 300,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.favmoviemodelview.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      spreadRadius: -8,
                      blurRadius: 10,
                      offset: Offset(
                        2,
                        -10,
                      ),
                      color: Colors.grey.shade800.withOpacity(.5))
                ]),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 300,
                      width: 398,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl:
                            'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                value.favmoviemodelview[index].image,
                        placeholder: (context, url) => Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'images/p.png',
                              fit: BoxFit.fill,
                              height: double.infinity,
                            ),
                            CircularProgressIndicator()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 398,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.3),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            value.favmoviemodelview[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                overflow: TextOverflow.visible,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value.favmoviemodelview[index].vote.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.visible,
                                    letterSpacing: 0),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value.favmoviemodelview[index].data,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.visible,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            value.favmoviemodelview[index].overview,
                            style: TextStyle(
                                color: Colors.white,
                                overflow: TextOverflow.visible,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })),
      );
    }));
  }
}

class UserFaMovieTopList extends StatelessWidget {
  const UserFaMovieTopList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavMovieTopRatedList>(builder: ((context, value, child) {
      return Container(
        height: 300,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.favmoviemodelview.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      spreadRadius: -8,
                      blurRadius: 10,
                      offset: Offset(
                        2,
                        -10,
                      ),
                      color: Colors.grey.shade800.withOpacity(.5))
                ]),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 300,
                      width: 398,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl:
                            'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                value.favmoviemodelview[index].image,
                        placeholder: (context, url) => Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'images/p.png',
                              fit: BoxFit.fill,
                              height: double.infinity,
                            ),
                            CircularProgressIndicator()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 398,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.3),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            value.favmoviemodelview[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                overflow: TextOverflow.visible,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value.favmoviemodelview[index].vote.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.visible,
                                    letterSpacing: 0),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value.favmoviemodelview[index].data,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.visible,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            value.favmoviemodelview[index].overview,
                            style: TextStyle(
                                color: Colors.white,
                                overflow: TextOverflow.visible,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })),
      );
    }));
  }
}

class Searchfor extends StatelessWidget {
  const Searchfor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var y = Provider.of<TopRatedMoviesList>(context).fetchtopdata();

    return Consumer<TopRatedMoviesList>(builder: ((context, value, child) {
      return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: value.toprated.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: 'https://images.moviemeter.nl/tmdb/t/p/original/' +
                      value.toprated[index].image,
                  placeholder: (context, url) => Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'images/p.png',
                        fit: BoxFit.fill,
                        height: double.infinity,
                      ),
                      CircularProgressIndicator()
                    ],
                  ),
                ),
                title: Text(value.toprated[index].title),
                subtitle: Text(
                    'Date: ${value.toprated[index].data}   Vote: ${value.toprated[index].vote}'),
              ),
            );
          }));
    }));
  }
}
