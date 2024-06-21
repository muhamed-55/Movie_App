import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubit/most_watched_movie_cubit.dart';


import '../Screens/movie_details_screen.dart';
class MostWatched extends StatelessWidget {

  const MostWatched({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
  create: (context) => MovieCubit()..fetchMostWatched(),
  child: Builder(
    builder: (context) {
      return BlocBuilder<MovieCubit, MovieState>(
      builder: (context, state) {
        if(state is MovieLoading){
          return const Center(child: CircularProgressIndicator());
        }else if(state is MovieSuccess){
          return Stack(
              children:<Widget>[
                GestureDetector(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MovieDetails(id:state.mostWatchedMovie.id))),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height:  MediaQuery.of(context).size.height*0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image(image: NetworkImage('https://image.tmdb.org/t/p/w500/${state.mostWatchedMovie.poster_path}'),fit:
                        BoxFit.cover,),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        state.mostWatchedMovie.original_title ?? '',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        state.mostWatchedMovie.tagline?? '',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            letterSpacing: 3
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child:  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0 ,horizontal: 8.0),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white.withOpacity(0.3),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Watch now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          );
        }else if (state is MovieError){
          return Center(child: Text('Error: ${state.error}'));
        } else {return Container();}
      },
);
    }
  ),
);
  }
}
//Image.network("https://static1.srcdn.com/wordpress/wp-content/uploads/2022/05/Every-marvel-character-who-appears-in-Doctor-strange-multiverse-of-madness.jpg", fit: BoxFit.cover),