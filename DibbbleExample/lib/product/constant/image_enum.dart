enum ImageEnums { daily, card1, card2 }

extension ImageEnumExtension on ImageEnums {
  String get toPath => 'assets/images/$name.png';
}
