import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/movie_details_screen.dart';

class MovieCard extends StatelessWidget {
  Image ?image ;
  double ?rating ;
   MovieCard({super.key, this.image, this.rating,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MovieDetails())),
      child: Padding(
        padding: const EdgeInsets.only(left: 25,bottom: 25,right: 10),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                    child: image,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 10),
                    child: Text('IMDB',style: GoogleFonts.abhayaLibre(color: Colors.white,fontSize: 18),),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow[800],size: 20,),
                      Text(rating.toString(),style: TextStyle(color: Colors.yellow[800]),)
                    ],
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
