// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviapp/view/list_of_playing_movies_modelview.dart';
import 'package:provider/provider.dart';

class De extends StatelessWidget {
  const De(
      {super.key,
      required this.image,
      required this.data,
      required this.date,
      required this.title,
      required this.id,
      required this.x});
  final image;
  final title;
  final data;
  final date;
  final x;
  final id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://images.moviemeter.nl/tmdb/t/p/original/' +
                            image,
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
                Icon(
                  Icons.play_circle,
                  size: 80,
                  color: Colors.amber.shade500,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    date.toString(),
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl:
                              'https://images.moviemeter.nl/tmdb/t/p/original/' +
                                  image,
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
                      Positioned(
                        top: -6,
                        left: -8,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.bookmark,
                              color: Colors.amber,
                              size: 35,
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(children: [
                    Text(
                      data.toString(),
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                      maxLines: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Text(
                            x.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
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
                    'More like ',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -1),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0),
                  )
                ],
              ),
            ),
            Im(id: id)
          ],
        ),
      ),
    );
  }
}

class Im extends StatelessWidget {
  Im({Key? key, required this.id}) : super(key: key);
  final id;
  @override
  Widget build(BuildContext context) {
    var y = Provider.of<Similarview>(context).fetchdata(id);

    return Consumer<Similarview>(builder: ((context, value, child) {
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
                                    size: 20,
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
                                        fontSize: 7,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            })),
      );
    }));
  }
}
