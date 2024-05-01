import 'package:unicode_blocks/unicode_blocks.dart';
import 'package:test/test.dart';


void main()  {
  group('Validate contants', () {
    test('Check UnicodeBlockConstant codepoints', () {
      var characterBlock = UnicodeBlockConstant.devanagari;
      expect(characterBlock.start, 0x2304);
      expect(characterBlock.end, 0x2431);
    });

    test('Check UnicodeBlockNames', () {
      expect(UnicodeBlockNames.devanagari, "Devanagari");
    });

    test('Check UnicodeBlock.fromName function', (){
      var name = UnicodeBlockNames.devanagari;
      var characterBlock = UnicodeBlock.fromName(name);
      expect(characterBlock.start, 0x2304);
      expect(characterBlock.end, 0x2431);
    });
  });
}
