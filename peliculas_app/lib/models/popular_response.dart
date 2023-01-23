// To parse this JSON data, do
//
//     final popularResponse = popularResponseFromJson(jsonString);

import 'dart:convert';

import 'package:peliculas_app/models/models.dart';

class PopularResponse {
  PopularResponse({
    required this.page,
    required this.results,
    required this.totalResults,
    required this.totalPages,
  });

  int page;
  List<Movie> results;
  int totalResults;
  int totalPages;

  factory PopularResponse.fromJson(String str) =>
      PopularResponse.fromMap(json.decode(str));

  factory PopularResponse.fromMap(Map<String, dynamic> json) => PopularResponse(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
