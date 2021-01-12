import 'package:json_annotation/json_annotation.dart';

/// This allows the `Image` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'image.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Image {
  @JsonKey(name: 'id', required: true)
  final int id;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'title')
  String title;

  Image(this.id, this.title, this.url);

  /// A necessary factory constructor for creating a new Image instance
  /// from a map. Pass the map to the generated `_$ImageFromJson()` constructor.
  /// The constructor is named after the source class, in this case, Image.
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ImageToJson`.
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
