import 'package:characters/characters.dart';

void main(List<String> arguments) {
  const notSurrogatePair = 'a';
  print(notSurrogatePair.codeUnits);
  print(notSurrogatePair.runes);
  const surrogatePair = '🎯';
  print(surrogatePair.codeUnits);
  print(surrogatePair.runes); // runes represent the whole surrogate value

  // unicode grapheme clusters
  const family = '👨‍👩‍👧‍👦';
  print(family.runes);
  /*
    a rune for clusters of emojis will still be a list of values
    the family emoji is a cluster of woman, man, girl and boy emojis
    glued with Zero Width Joiner or ZWJ
  */
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);
  print(family.characters);
  print(family.characters.length);

  // string concatenation
  const concatenation = 'concatenation';
  final message = StringBuffer();
  message.write('This');
  message.write(' is more ');
  message.write('effective $concatenation ');
  message.write('than + or +=.');
  print(message.toString());
}
