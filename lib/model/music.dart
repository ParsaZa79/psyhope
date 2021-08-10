import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Music {
  final String title;
  final String coverImageURL;
  final String audioLink;
  Music({
    required this.title,
    required this.coverImageURL,
    required this.audioLink,
  });

  Music copyWith({
    String? title,
    String? imageUrl,
    String? audioLink,
  }) {
    return Music(
      title: title ?? this.title,
      coverImageURL: imageUrl ?? this.coverImageURL,
      audioLink: audioLink ?? this.audioLink,
    );
  }

  static Future<String> getJson() {
    return rootBundle.loadString('data/musics.json');
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image-url': coverImageURL,
      'audio-link': audioLink,
    };
  }

  factory Music.fromMap(Map<String, dynamic> map) {
    return Music(
      title: map['title'],
      coverImageURL: map['image-url'],
      audioLink: map['audio-link'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Music.fromJson(String source) => Music.fromMap(json.decode(source));

  @override
  String toString() =>
      'Music(title: $title, imageUrl: $coverImageURL, audioLink: $audioLink)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Music &&
        other.title == title &&
        other.coverImageURL == coverImageURL &&
        other.audioLink == audioLink;
  }

  @override
  int get hashCode => title.hashCode ^ coverImageURL.hashCode ^ audioLink.hashCode;
}
