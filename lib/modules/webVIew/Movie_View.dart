import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MovieView extends StatelessWidget {
  const MovieView({required this.url,required this.title}) : super();
  final url,title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "$title",
                  style: GoogleFonts.germaniaOne(fontSize: 35, color: Colors.red,),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                " Movies",
                style: GoogleFonts.baskervville(fontSize: 28, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
