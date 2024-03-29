import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_model.freezed.dart';
part 'artist_model.g.dart';

typedef ArtistList = List<Artist>;

@freezed
class Artist with _$Artist {
  factory Artist({
    @Default(0) int id,
    @Default('') String name,
    @Default([]) List<String> images,
  }) = _Artist;

  factory Artist.fromJson(dynamic json) => _$ArtistFromJson(json);
}
