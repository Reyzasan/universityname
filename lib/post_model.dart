import 'package:flutter/foundation.dart';

class Post {
 final String alpha_two_code;
 final String name;
 final String country;
//  final String web_pages;

  Post({
    required this.alpha_two_code,
    required this.name,
    required this.country,
    // required this.web_pages,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      alpha_two_code: json['alpha_two_code'] as String,
      country: json['country'] as String,
      name: json['name'] as String,
      // web_pages: json['web_pages'] as String,
    );
  }
}