import 'package:egy_rezk/modules/webVIew/Movie_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieItem extends StatelessWidget {
  const MovieItem(
      {required this.title, required this.year, required this.urltoimage,required this.movieName})
      : super();
  final String title, urltoimage, year,movieName;

  @override
  Widget build(BuildContext context) {
    String name = '';
    for(int i=0;i<=this.title.length-1;i++){
      if(this.title[i] == ' '){
        name += '-';
      }else
        name += this.title[i];
    }
    return GestureDetector(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieView(url: "https://123moviesd.com/$name/",title: this.movieName,)));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:45.0),
              child: ClipRRect(
                child: Image.network(
                  "${this.urltoimage}",fit: BoxFit.fitWidth,
                  height: 382,
                  width: 300,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              width: 300,
                child: Center(
                  child: Text(
                    "${this.title}",
                    style: GoogleFonts.koHo(fontSize: 23),
                    overflow: TextOverflow.ellipsis,
                  ),
                )),
            Text(
              "'${this.year}'",
              style: GoogleFonts.euphoriaScript(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
