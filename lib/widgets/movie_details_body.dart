import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsContent extends StatelessWidget {
  DetailsContent({super.key});
  String story ="The Batman story revolves around the character of Bruce Wayne, a billionaire philanthropist who becomes a crime-fighting vigilante after witnessing the murder of his parents, Thomas and Martha Wayne, as a child. This traumatic event sets him on a path of vengeance and justice, leading him to create the alter ego of Batman." ;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height:  MediaQuery.of(context).size.height*0.6,
                child: Image.network('https://m.media-amazon.com/images/I/51JXJNnhGeL.jpg',fit: BoxFit.fill,),
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
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: IconButton(
                        icon:const Icon( Icons.arrow_back_ios, color: Colors.white,size: 25,),
                        onPressed: () { Navigator.pop(context) ;},
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
                    child:  IconButton(
                      icon:const Icon( Icons.file_open_outlined, color: Colors.white,size: 25,),
                      onPressed: () { Navigator.pop(context) ;},
                    ),
                  )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,top: 18),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow[800],size: 20,),
                    const SizedBox(width: 5,),
                    Text('8.3',style: TextStyle(color: Colors.yellow[800]),)
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
                        Text('IMDB',style: GoogleFonts.abhayaLibre(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 5,),
                        Text('7.5',style: GoogleFonts.bebasNeue(color: Colors.black,fontSize:15),),
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
                padding: const EdgeInsets.only(left:25.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black54,
                    border: Border.all(width: 1,color: Colors.white10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(' Action ',style: GoogleFonts.adamina(color: Colors.white , fontSize: 10),),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black54,
                    border: Border.all(width: 1,color: Colors.white10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(' 1h 20 min ',style: GoogleFonts.adamina(color: Colors.white , fontSize: 10),),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(' THE BATMAN ',style: GoogleFonts.bebasNeue(fontSize: 30,color: Colors.red[900],letterSpacing:1),),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,bottom: 15),
            child: Text(story,style: const TextStyle(fontSize: 12,color: Colors.white70,letterSpacing:1),),
          ),

        ],
      ),
    );
  }
}
