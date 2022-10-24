enum ImageEnums { daily, card1, card2 }

extension ImageEnumExtension on ImageEnums {
 String get _toPath => 'assets/images/$name.png';
  Image get toImage => Image.asset(_toPath);
}
