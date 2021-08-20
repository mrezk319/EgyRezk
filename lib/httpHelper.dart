import 'dart:convert';

import 'package:egy_rezk/models/egy_model.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  late List<EgyModel> moviewData = [];

  Future<void> getData(movieName) async {
    var url = Uri.parse(
        "https://www.omdbapi.com/?s=$movieName&page=2&apikey=604c7d75");
    http.Response jsonData = await http.get(url);
    var data = jsonDecode(jsonData.body);
    if (data["Response"] != "False") {
      data["Search"].forEach((e) {
        if (e["Title"] != null && e["Poster"] != null && e["Year"] != null) {
          EgyModel newData = new EgyModel(
              title: e["Title"], urlToImage: e["Poster"], year: e["Year"]);
          moviewData.add(newData);
        }
      });
    }
  }
}
