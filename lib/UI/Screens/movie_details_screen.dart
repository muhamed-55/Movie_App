import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubit/movie_details_cubit.dart';
import '../widgets/bottom_navbar.dart';
import 'dart:ui';

class MovieDetails extends StatelessWidget {
  final int id;
  const MovieDetails({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailsCubit()..fetchMovieDetails(id),
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: bottomNavBar(context),
        body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (context, state) {
          if(state is MovieDetailsLoading){
            return const Center(child: CircularProgressIndicator(),);
          } else if(state is MovieDetailsSuccess) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.6,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500${state.movieDetails.poster_path}',
                          fit: BoxFit.fill,),
                      ),
                      Positioned(
                          left: 35,
                          top: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black.withOpacity(0.3),
                                border: Border.all(
                                    color: Colors.white12,
                                    width: 1
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios, color: Colors.white,
                                  size: 25,),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          )
                      ),
                      Positioned(
                          right: 35,
                          top: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black.withOpacity(0.3),
                                border: Border.all(
                                    color: Colors.white12,
                                    width: 1
                                )
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.file_open_outlined, color: Colors.white,
                                size: 25,),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          )
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 18),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star, color: Colors.yellow[800], size: 20,),
                            const SizedBox(width: 5,),
                            Text(state.movieDetails.vote_average.toString(),
                              style: TextStyle(color: Colors.yellow[800]),)
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.yellow[800],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text('IMDB', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
                                const SizedBox(width: 5,),
                                Text(state.movieDetails.vote_average.toString(), style: const TextStyle(
                                    color: Colors.black, fontSize: 15),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black54,
                            border: Border.all(width: 1, color: Colors.white10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(' Action ', style: TextStyle(
                                color: Colors.white, fontSize: 10),),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black54,
                            border: Border.all(width: 1, color: Colors.white10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${state.movieDetails.runtime}min',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 10),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(state.movieDetails.original_title!,
                      style: TextStyle(fontSize: 30, color: Colors
                          .red[900], letterSpacing: 1),),
                  ),
                  const SizedBox(height: 10,),
                    Padding(
                    padding: const EdgeInsets.only(left: 25.0, bottom: 15),
                    child: Text(state.movieDetails.overview!, style: const TextStyle(fontSize: 12, color: Colors
                        .white70, letterSpacing: 1),),
                  ),

                ],
              ),
            );
          } else if(state is MovieDetailsFailure){
            return Center(child: Text(state.error.toString()));
          } else{  return Container(); }
  },
),

    ),
    );
  }
}
