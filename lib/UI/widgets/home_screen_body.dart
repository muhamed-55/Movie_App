import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubit/popular_movies_cubit.dart';
import 'most_watched.dart';
import 'popular_movie_card.dart';
import 'package:movie_app/UI/widgets/search_bar.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
          const SizedBox(
            height: 25,
          ),
          const Search_Bar(),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text("Most Watched Movies",style: TextStyle(color: Colors.white,fontSize: 14 ,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height:10,),
          const Center(child: MostWatched(),),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text("Popular Movies",style:TextStyle(color: Colors.white,fontSize: 14),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text("See More",style: TextStyle(color: Colors.red[500],fontSize: 14),),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 300,
            child: BlocProvider(
              create: (context) => PopularMoviesCubit()..fetchPopularMovie(),
              child: Builder(
                builder: (context) {
                  return BlocBuilder<PopularMoviesCubit, PopularMoviesState>(
                   builder: (context, state) {
                     if(state is PopularMoviesLoading){
                       return const Center(child: CircularProgressIndicator(),);
                     }
                     else if(state is PopularMoviesSuccess){
                       return ListView.builder(
                         scrollDirection:Axis.horizontal,
                         itemCount: state.popularMovie.results?.length,
                         itemBuilder: (context,index) {
                           final movie = state.popularMovie.results![index];
                           return PopularMovieCard(
                             image: NetworkImage('https://image.tmdb.org/t/p/w500/${movie.poster_path}'),
                             rating: movie.vote_average,
                             id: movie.id,
                           ) ;
                           }
                       );
                     }
                     else if (state is PopularMoviesFailure){
                       return Center(child: Text('Error: ${state.error}'));
                     } else {return Container();}
            },
          );
                          }
                        ),
          ),
                    )
                  ],
                ),
              );
            }
          }



//
// [
// PopularMovieCard(image:Image.network('https://m.media-amazon.com/images/I/51A6J42QdWL.jpg',fit: BoxFit.cover,),rating: 8.4,),
// PopularMovieCard(image:Image.network('https://static1.colliderimages.com/wordpress/wp-content/uploads/2019/04/joker-movie-poster-480x600.jpg',fit: BoxFit.cover,),rating: 8.2,),
// PopularMovieCard(image:Image.network('https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/12/uncharted-movie-poster.jfif',fit: BoxFit.cover,),rating:8.5,),
// ];