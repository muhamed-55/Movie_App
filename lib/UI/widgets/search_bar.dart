import 'package:flutter/material.dart';
class Search_Bar extends StatelessWidget {
  const Search_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 25),
          suffixIcon:const Padding(
            padding:  EdgeInsets.all(12.0),
            child:  Icon(Icons.mic_none,color: Colors.white60,),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          filled: true,
          hintText: "  Search",
          hintStyle: const TextStyle(color: Colors.white60),
          prefixIcon: const Icon(Icons.search ,color: Colors.white60,),
          fillColor: const Color(0xff181818),
        ),
      ),
    );
  }
}
