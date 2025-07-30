import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinks({required this.smallThumbnail, required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json['smallThumbnail'] as String,
    thumbnail: json['thumbnail'] as String,
  );

  Map<String, dynamic> toJson() => {
    'smallThumbnail': smallThumbnail,
    'thumbnail': thumbnail,
  };

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
  // Placeholder for testing purposes
  static ImageLinks placeholder() {
    return const ImageLinks(
      smallThumbnail:
          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
      thumbnail: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
    );
  }
}
