import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'most_watched.dart';
import 'movie_card.dart';
import 'search_bar.dart';

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
          const SearchBar(),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text("Most Watched Movies",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 14 ,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height:10,),
          const Center(child: MostWatched(),),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Padding(
                padding: const  EdgeInsets.only(left: 40.0),
                child: Text("Popular Movies",style: GoogleFonts.abyssinicaSil(color: Colors.white,fontSize: 14),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text("See More",style: GoogleFonts.abyssinicaSil(color: Colors.red[500],fontSize: 14),),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:  [
                MovieCard(image:Image.network('https://m.media-amazon.com/images/I/51A6J42QdWL.jpg',fit: BoxFit.cover,),rating: 8.4,),
                MovieCard(image:Image.network('https://static1.colliderimages.com/wordpress/wp-content/uploads/2019/04/joker-movie-poster-480x600.jpg',fit: BoxFit.cover,),rating: 8.2,),
                MovieCard(image:Image.network('https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/12/uncharted-movie-poster.jfif',fit: BoxFit.cover,),rating:8.5,),
              ],
            ),
          )
        ],
      ),
    );
  }
}




