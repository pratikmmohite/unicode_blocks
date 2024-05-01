class UnicodeBlock {
  final int start;
  final int end;
  final String type;

  const UnicodeBlock(this.start, this.end, this.type);

  const UnicodeBlock.uknown(
      {this.start = -1, this.end = -1, this.type = "uknown"});

  bool isMatch(int rune) {
    return start > rune && end < rune;
  }

  static UnicodeBlock fromName(String name) {
    return UnicodeBlockConstant.blockMap[name] ?? UnicodeBlock.uknown();
  }

  @override
  String toString() {
    return "UnicodeBlock($start,$end,$type)";
  }
}

class UnicodeBlockConstant {
  static const basicLatin =
      UnicodeBlock(0x0, 0x127, UnicodeBlockNames.basicLatin);
  static const latin1Supplement =
      UnicodeBlock(0x128, 0x255, UnicodeBlockNames.latin1Supplement);
  static const latinExtendeda =
      UnicodeBlock(0x256, 0x383, UnicodeBlockNames.latinExtendeda);
  static const latinExtendedb =
      UnicodeBlock(0x384, 0x591, UnicodeBlockNames.latinExtendedb);
  static const ipaExtensions =
      UnicodeBlock(0x592, 0x687, UnicodeBlockNames.ipaExtensions);
  static const spacingModifierLetters =
      UnicodeBlock(0x688, 0x767, UnicodeBlockNames.spacingModifierLetters);
  static const combiningDiacriticalMarks =
      UnicodeBlock(0x768, 0x879, UnicodeBlockNames.combiningDiacriticalMarks);
  static const greekAndCoptic =
      UnicodeBlock(0x880, 0x1023, UnicodeBlockNames.greekAndCoptic);
  static const cyrillic =
      UnicodeBlock(0x1024, 0x1279, UnicodeBlockNames.cyrillic);
  static const cyrillicSupplement =
      UnicodeBlock(0x1280, 0x1327, UnicodeBlockNames.cyrillicSupplement);
  static const armenian =
      UnicodeBlock(0x1328, 0x1423, UnicodeBlockNames.armenian);
  static const hebrew = UnicodeBlock(0x1424, 0x1535, UnicodeBlockNames.hebrew);
  static const arabic = UnicodeBlock(0x1536, 0x1791, UnicodeBlockNames.arabic);
  static const syriac = UnicodeBlock(0x1792, 0x1871, UnicodeBlockNames.syriac);
  static const arabicSupplement =
      UnicodeBlock(0x1872, 0x1919, UnicodeBlockNames.arabicSupplement);
  static const thaana = UnicodeBlock(0x1920, 0x1983, UnicodeBlockNames.thaana);
  static const nko = UnicodeBlock(0x1984, 0x2047, UnicodeBlockNames.nko);
  static const samaritan =
      UnicodeBlock(0x2048, 0x2111, UnicodeBlockNames.samaritan);
  static const mandaic =
      UnicodeBlock(0x2112, 0x2143, UnicodeBlockNames.mandaic);
  static const syriacSupplement =
      UnicodeBlock(0x2144, 0x2159, UnicodeBlockNames.syriacSupplement);
  static const arabicExtendedb =
      UnicodeBlock(0x2160, 0x2207, UnicodeBlockNames.arabicExtendedb);
  static const arabicExtendeda =
      UnicodeBlock(0x2208, 0x2303, UnicodeBlockNames.arabicExtendeda);
  static const devanagari =
      UnicodeBlock(0x2304, 0x2431, UnicodeBlockNames.devanagari);
  static const bengali =
      UnicodeBlock(0x2432, 0x2559, UnicodeBlockNames.bengali);
  static const gurmukhi =
      UnicodeBlock(0x2560, 0x2687, UnicodeBlockNames.gurmukhi);
  static const gujarati =
      UnicodeBlock(0x2688, 0x2815, UnicodeBlockNames.gujarati);
  static const oriya = UnicodeBlock(0x2816, 0x2943, UnicodeBlockNames.oriya);
  static const tamil = UnicodeBlock(0x2944, 0x3071, UnicodeBlockNames.tamil);
  static const telugu = UnicodeBlock(0x3072, 0x3199, UnicodeBlockNames.telugu);
  static const kannada =
      UnicodeBlock(0x3200, 0x3327, UnicodeBlockNames.kannada);
  static const malayalam =
      UnicodeBlock(0x3328, 0x3455, UnicodeBlockNames.malayalam);
  static const sinhala =
      UnicodeBlock(0x3456, 0x3583, UnicodeBlockNames.sinhala);
  static const thai = UnicodeBlock(0x3584, 0x3711, UnicodeBlockNames.thai);
  static const lao = UnicodeBlock(0x3712, 0x3839, UnicodeBlockNames.lao);
  static const tibetan =
      UnicodeBlock(0x3840, 0x4095, UnicodeBlockNames.tibetan);
  static const myanmar =
      UnicodeBlock(0x4096, 0x4255, UnicodeBlockNames.myanmar);
  static const georgian =
      UnicodeBlock(0x4256, 0x4351, UnicodeBlockNames.georgian);
  static const hangulJamo =
      UnicodeBlock(0x4352, 0x4607, UnicodeBlockNames.hangulJamo);
  static const ethiopic =
      UnicodeBlock(0x4608, 0x4991, UnicodeBlockNames.ethiopic);
  static const ethiopicSupplement =
      UnicodeBlock(0x4992, 0x5023, UnicodeBlockNames.ethiopicSupplement);
  static const cherokee =
      UnicodeBlock(0x5024, 0x5119, UnicodeBlockNames.cherokee);
  static const unifiedCanadianAboriginalSyllabics = UnicodeBlock(
      0x5120, 0x5759, UnicodeBlockNames.unifiedCanadianAboriginalSyllabics);
  static const ogham = UnicodeBlock(0x5760, 0x5791, UnicodeBlockNames.ogham);
  static const runic = UnicodeBlock(0x5792, 0x5887, UnicodeBlockNames.runic);
  static const tagalog =
      UnicodeBlock(0x5888, 0x5919, UnicodeBlockNames.tagalog);
  static const hanunoo =
      UnicodeBlock(0x5920, 0x5951, UnicodeBlockNames.hanunoo);
  static const buhid = UnicodeBlock(0x5952, 0x5983, UnicodeBlockNames.buhid);
  static const tagbanwa =
      UnicodeBlock(0x5984, 0x6015, UnicodeBlockNames.tagbanwa);
  static const khmer = UnicodeBlock(0x6016, 0x6143, UnicodeBlockNames.khmer);
  static const mongolian =
      UnicodeBlock(0x6144, 0x6319, UnicodeBlockNames.mongolian);
  static const unifiedCanadianAboriginalSyllabicsExtended = UnicodeBlock(0x6320,
      0x6399, UnicodeBlockNames.unifiedCanadianAboriginalSyllabicsExtended);
  static const limbu = UnicodeBlock(0x6400, 0x6479, UnicodeBlockNames.limbu);
  static const taiLe = UnicodeBlock(0x6480, 0x6527, UnicodeBlockNames.taiLe);
  static const newTaiLue =
      UnicodeBlock(0x6528, 0x6623, UnicodeBlockNames.newTaiLue);
  static const khmerSymbols =
      UnicodeBlock(0x6624, 0x6655, UnicodeBlockNames.khmerSymbols);
  static const buginese =
      UnicodeBlock(0x6656, 0x6687, UnicodeBlockNames.buginese);
  static const taiTham =
      UnicodeBlock(0x6688, 0x6831, UnicodeBlockNames.taiTham);
  static const combiningDiacriticalMarksExtended = UnicodeBlock(
      0x6832, 0x6911, UnicodeBlockNames.combiningDiacriticalMarksExtended);
  static const balinese =
      UnicodeBlock(0x6912, 0x7039, UnicodeBlockNames.balinese);
  static const sundanese =
      UnicodeBlock(0x7040, 0x7103, UnicodeBlockNames.sundanese);
  static const batak = UnicodeBlock(0x7104, 0x7167, UnicodeBlockNames.batak);
  static const lepcha = UnicodeBlock(0x7168, 0x7247, UnicodeBlockNames.lepcha);
  static const olChiki =
      UnicodeBlock(0x7248, 0x7295, UnicodeBlockNames.olChiki);
  static const cyrillicExtendedc =
      UnicodeBlock(0x7296, 0x7311, UnicodeBlockNames.cyrillicExtendedc);
  static const georgianExtended =
      UnicodeBlock(0x7312, 0x7359, UnicodeBlockNames.georgianExtended);
  static const sundaneseSupplement =
      UnicodeBlock(0x7360, 0x7375, UnicodeBlockNames.sundaneseSupplement);
  static const vedicExtensions =
      UnicodeBlock(0x7376, 0x7423, UnicodeBlockNames.vedicExtensions);
  static const phoneticExtensions =
      UnicodeBlock(0x7424, 0x7551, UnicodeBlockNames.phoneticExtensions);
  static const phoneticExtensionsSupplement = UnicodeBlock(
      0x7552, 0x7615, UnicodeBlockNames.phoneticExtensionsSupplement);
  static const combiningDiacriticalMarksSupplement = UnicodeBlock(
      0x7616, 0x7679, UnicodeBlockNames.combiningDiacriticalMarksSupplement);
  static const latinExtendedAdditional =
      UnicodeBlock(0x7680, 0x7935, UnicodeBlockNames.latinExtendedAdditional);
  static const greekExtended =
      UnicodeBlock(0x7936, 0x8191, UnicodeBlockNames.greekExtended);
  static const generalPunctuation =
      UnicodeBlock(0x8192, 0x8303, UnicodeBlockNames.generalPunctuation);
  static const superscriptsAndSubscripts =
      UnicodeBlock(0x8304, 0x8351, UnicodeBlockNames.superscriptsAndSubscripts);
  static const currencySymbols =
      UnicodeBlock(0x8352, 0x8399, UnicodeBlockNames.currencySymbols);
  static const combiningDiacriticalMarksForSymbols = UnicodeBlock(
      0x8400, 0x8447, UnicodeBlockNames.combiningDiacriticalMarksForSymbols);
  static const letterlikeSymbols =
      UnicodeBlock(0x8448, 0x8527, UnicodeBlockNames.letterlikeSymbols);
  static const numberForms =
      UnicodeBlock(0x8528, 0x8591, UnicodeBlockNames.numberForms);
  static const arrows = UnicodeBlock(0x8592, 0x8703, UnicodeBlockNames.arrows);
  static const mathematicalOperators =
      UnicodeBlock(0x8704, 0x8959, UnicodeBlockNames.mathematicalOperators);
  static const miscellaneousTechnical =
      UnicodeBlock(0x8960, 0x9215, UnicodeBlockNames.miscellaneousTechnical);
  static const controlPictures =
      UnicodeBlock(0x9216, 0x9279, UnicodeBlockNames.controlPictures);
  static const opticalCharacterRecognition = UnicodeBlock(
      0x9280, 0x9311, UnicodeBlockNames.opticalCharacterRecognition);
  static const enclosedAlphanumerics =
      UnicodeBlock(0x9312, 0x9471, UnicodeBlockNames.enclosedAlphanumerics);
  static const boxDrawing =
      UnicodeBlock(0x9472, 0x9599, UnicodeBlockNames.boxDrawing);
  static const blockElements =
      UnicodeBlock(0x9600, 0x9631, UnicodeBlockNames.blockElements);
  static const geometricShapes =
      UnicodeBlock(0x9632, 0x9727, UnicodeBlockNames.geometricShapes);
  static const miscellaneousSymbols =
      UnicodeBlock(0x9728, 0x9983, UnicodeBlockNames.miscellaneousSymbols);
  static const dingbats =
      UnicodeBlock(0x9984, 0x10175, UnicodeBlockNames.dingbats);
  static const miscellaneousMathematicalSymbolsa = UnicodeBlock(
      0x10176, 0x10223, UnicodeBlockNames.miscellaneousMathematicalSymbolsa);
  static const supplementalArrowsa =
      UnicodeBlock(0x10224, 0x10239, UnicodeBlockNames.supplementalArrowsa);
  static const braillePatterns =
      UnicodeBlock(0x10240, 0x10495, UnicodeBlockNames.braillePatterns);
  static const supplementalArrowsb =
      UnicodeBlock(0x10496, 0x10623, UnicodeBlockNames.supplementalArrowsb);
  static const miscellaneousMathematicalSymbolsb = UnicodeBlock(
      0x10624, 0x10751, UnicodeBlockNames.miscellaneousMathematicalSymbolsb);
  static const supplementalMathematicalOperators = UnicodeBlock(
      0x10752, 0x11007, UnicodeBlockNames.supplementalMathematicalOperators);
  static const miscellaneousSymbolsAndArrows = UnicodeBlock(
      0x11008, 0x11263, UnicodeBlockNames.miscellaneousSymbolsAndArrows);
  static const glagolitic =
      UnicodeBlock(0x11264, 0x11359, UnicodeBlockNames.glagolitic);
  static const latinExtendedc =
      UnicodeBlock(0x11360, 0x11391, UnicodeBlockNames.latinExtendedc);
  static const coptic =
      UnicodeBlock(0x11392, 0x11519, UnicodeBlockNames.coptic);
  static const georgianSupplement =
      UnicodeBlock(0x11520, 0x11567, UnicodeBlockNames.georgianSupplement);
  static const tifinagh =
      UnicodeBlock(0x11568, 0x11647, UnicodeBlockNames.tifinagh);
  static const ethiopicExtended =
      UnicodeBlock(0x11648, 0x11743, UnicodeBlockNames.ethiopicExtended);
  static const cyrillicExtendeda =
      UnicodeBlock(0x11744, 0x11775, UnicodeBlockNames.cyrillicExtendeda);
  static const supplementalPunctuation =
      UnicodeBlock(0x11776, 0x11903, UnicodeBlockNames.supplementalPunctuation);
  static const cjkRadicalsSupplement =
      UnicodeBlock(0x11904, 0x12031, UnicodeBlockNames.cjkRadicalsSupplement);
  static const kangxiRadicals =
      UnicodeBlock(0x12032, 0x12255, UnicodeBlockNames.kangxiRadicals);
  static const ideographicDescriptionCharacters = UnicodeBlock(
      0x12272, 0x12287, UnicodeBlockNames.ideographicDescriptionCharacters);
  static const cjkSymbolsAndPunctuation = UnicodeBlock(
      0x12288, 0x12351, UnicodeBlockNames.cjkSymbolsAndPunctuation);
  static const hiragana =
      UnicodeBlock(0x12352, 0x12447, UnicodeBlockNames.hiragana);
  static const katakana =
      UnicodeBlock(0x12448, 0x12543, UnicodeBlockNames.katakana);
  static const bopomofo =
      UnicodeBlock(0x12544, 0x12591, UnicodeBlockNames.bopomofo);
  static const hangulCompatibilityJamo =
      UnicodeBlock(0x12592, 0x12687, UnicodeBlockNames.hangulCompatibilityJamo);
  static const kanbun =
      UnicodeBlock(0x12688, 0x12703, UnicodeBlockNames.kanbun);
  static const bopomofoExtended =
      UnicodeBlock(0x12704, 0x12735, UnicodeBlockNames.bopomofoExtended);
  static const cjkStrokes =
      UnicodeBlock(0x12736, 0x12783, UnicodeBlockNames.cjkStrokes);
  static const katakanaPhoneticExtensions = UnicodeBlock(
      0x12784, 0x12799, UnicodeBlockNames.katakanaPhoneticExtensions);
  static const enclosedCjkLettersAndMonths = UnicodeBlock(
      0x12800, 0x13055, UnicodeBlockNames.enclosedCjkLettersAndMonths);
  static const cjkCompatibility =
      UnicodeBlock(0x13056, 0x13311, UnicodeBlockNames.cjkCompatibility);
  static const cjkUnifiedIdeographsExtensionA = UnicodeBlock(
      0x13312, 0x19903, UnicodeBlockNames.cjkUnifiedIdeographsExtensionA);
  static const yijingHexagramSymbols =
      UnicodeBlock(0x19904, 0x19967, UnicodeBlockNames.yijingHexagramSymbols);
  static const cjkUnifiedIdeographs =
      UnicodeBlock(0x19968, 0x40959, UnicodeBlockNames.cjkUnifiedIdeographs);
  static const yiSyllables =
      UnicodeBlock(0x40960, 0x42127, UnicodeBlockNames.yiSyllables);
  static const yiRadicals =
      UnicodeBlock(0x42128, 0x42191, UnicodeBlockNames.yiRadicals);
  static const lisu = UnicodeBlock(0x42192, 0x42239, UnicodeBlockNames.lisu);
  static const vai = UnicodeBlock(0x42240, 0x42559, UnicodeBlockNames.vai);
  static const cyrillicExtendedb =
      UnicodeBlock(0x42560, 0x42655, UnicodeBlockNames.cyrillicExtendedb);
  static const bamum = UnicodeBlock(0x42656, 0x42751, UnicodeBlockNames.bamum);
  static const modifierToneLetters =
      UnicodeBlock(0x42752, 0x42783, UnicodeBlockNames.modifierToneLetters);
  static const latinExtendedd =
      UnicodeBlock(0x42784, 0x43007, UnicodeBlockNames.latinExtendedd);
  static const sylotiNagri =
      UnicodeBlock(0x43008, 0x43055, UnicodeBlockNames.sylotiNagri);
  static const commonIndicNumberForms =
      UnicodeBlock(0x43056, 0x43071, UnicodeBlockNames.commonIndicNumberForms);
  static const phagspa =
      UnicodeBlock(0x43072, 0x43135, UnicodeBlockNames.phagspa);
  static const saurashtra =
      UnicodeBlock(0x43136, 0x43231, UnicodeBlockNames.saurashtra);
  static const devanagariExtended =
      UnicodeBlock(0x43232, 0x43263, UnicodeBlockNames.devanagariExtended);
  static const kayahLi =
      UnicodeBlock(0x43264, 0x43311, UnicodeBlockNames.kayahLi);
  static const rejang =
      UnicodeBlock(0x43312, 0x43359, UnicodeBlockNames.rejang);
  static const hangulJamoExtendeda =
      UnicodeBlock(0x43360, 0x43391, UnicodeBlockNames.hangulJamoExtendeda);
  static const javanese =
      UnicodeBlock(0x43392, 0x43487, UnicodeBlockNames.javanese);
  static const myanmarExtendedb =
      UnicodeBlock(0x43488, 0x43519, UnicodeBlockNames.myanmarExtendedb);
  static const cham = UnicodeBlock(0x43520, 0x43615, UnicodeBlockNames.cham);
  static const myanmarExtendeda =
      UnicodeBlock(0x43616, 0x43647, UnicodeBlockNames.myanmarExtendeda);
  static const taiViet =
      UnicodeBlock(0x43648, 0x43743, UnicodeBlockNames.taiViet);
  static const meeteiMayekExtensions =
      UnicodeBlock(0x43744, 0x43775, UnicodeBlockNames.meeteiMayekExtensions);
  static const ethiopicExtendeda =
      UnicodeBlock(0x43776, 0x43823, UnicodeBlockNames.ethiopicExtendeda);
  static const latinExtendede =
      UnicodeBlock(0x43824, 0x43887, UnicodeBlockNames.latinExtendede);
  static const cherokeeSupplement =
      UnicodeBlock(0x43888, 0x43967, UnicodeBlockNames.cherokeeSupplement);
  static const meeteiMayek =
      UnicodeBlock(0x43968, 0x44031, UnicodeBlockNames.meeteiMayek);
  static const hangulSyllables =
      UnicodeBlock(0x44032, 0x55215, UnicodeBlockNames.hangulSyllables);
  static const hangulJamoExtendedb =
      UnicodeBlock(0x55216, 0x55295, UnicodeBlockNames.hangulJamoExtendedb);
  static const highSurrogates =
      UnicodeBlock(0x55296, 0x56191, UnicodeBlockNames.highSurrogates);
  static const highPrivateUseSurrogates = UnicodeBlock(
      0x56192, 0x56319, UnicodeBlockNames.highPrivateUseSurrogates);
  static const lowSurrogates =
      UnicodeBlock(0x56320, 0x57343, UnicodeBlockNames.lowSurrogates);
  static const privateUseArea =
      UnicodeBlock(0x57344, 0x63743, UnicodeBlockNames.privateUseArea);
  static const cjkCompatibilityIdeographs = UnicodeBlock(
      0x63744, 0x64255, UnicodeBlockNames.cjkCompatibilityIdeographs);
  static const alphabeticPresentationForms = UnicodeBlock(
      0x64256, 0x64335, UnicodeBlockNames.alphabeticPresentationForms);
  static const arabicPresentationFormsa = UnicodeBlock(
      0x64336, 0x65023, UnicodeBlockNames.arabicPresentationFormsa);
  static const variationSelectors =
      UnicodeBlock(0x65024, 0x65039, UnicodeBlockNames.variationSelectors);
  static const verticalForms =
      UnicodeBlock(0x65040, 0x65055, UnicodeBlockNames.verticalForms);
  static const combiningHalfMarks =
      UnicodeBlock(0x65056, 0x65071, UnicodeBlockNames.combiningHalfMarks);
  static const cjkCompatibilityForms =
      UnicodeBlock(0x65072, 0x65103, UnicodeBlockNames.cjkCompatibilityForms);
  static const smallFormVariants =
      UnicodeBlock(0x65104, 0x65135, UnicodeBlockNames.smallFormVariants);
  static const arabicPresentationFormsb = UnicodeBlock(
      0x65136, 0x65279, UnicodeBlockNames.arabicPresentationFormsb);
  static const halfwidthAndFullwidthForms = UnicodeBlock(
      0x65280, 0x65519, UnicodeBlockNames.halfwidthAndFullwidthForms);
  static const specials =
      UnicodeBlock(0x65520, 0x65535, UnicodeBlockNames.specials);
  static const linearBSyllabary =
      UnicodeBlock(0x65536, 0x65663, UnicodeBlockNames.linearBSyllabary);
  static const linearBIdeograms =
      UnicodeBlock(0x65664, 0x65791, UnicodeBlockNames.linearBIdeograms);
  static const aegeanNumbers =
      UnicodeBlock(0x65792, 0x65855, UnicodeBlockNames.aegeanNumbers);
  static const ancientGreekNumbers =
      UnicodeBlock(0x65856, 0x65935, UnicodeBlockNames.ancientGreekNumbers);
  static const ancientSymbols =
      UnicodeBlock(0x65936, 0x65999, UnicodeBlockNames.ancientSymbols);
  static const phaistosDisc =
      UnicodeBlock(0x66000, 0x66047, UnicodeBlockNames.phaistosDisc);
  static const lycian =
      UnicodeBlock(0x66176, 0x66207, UnicodeBlockNames.lycian);
  static const carian =
      UnicodeBlock(0x66208, 0x66271, UnicodeBlockNames.carian);
  static const copticEpactNumbers =
      UnicodeBlock(0x66272, 0x66303, UnicodeBlockNames.copticEpactNumbers);
  static const oldItalic =
      UnicodeBlock(0x66304, 0x66351, UnicodeBlockNames.oldItalic);
  static const gothic =
      UnicodeBlock(0x66352, 0x66383, UnicodeBlockNames.gothic);
  static const oldPermic =
      UnicodeBlock(0x66384, 0x66431, UnicodeBlockNames.oldPermic);
  static const ugaritic =
      UnicodeBlock(0x66432, 0x66463, UnicodeBlockNames.ugaritic);
  static const oldPersian =
      UnicodeBlock(0x66464, 0x66527, UnicodeBlockNames.oldPersian);
  static const deseret =
      UnicodeBlock(0x66560, 0x66639, UnicodeBlockNames.deseret);
  static const shavian =
      UnicodeBlock(0x66640, 0x66687, UnicodeBlockNames.shavian);
  static const osmanya =
      UnicodeBlock(0x66688, 0x66735, UnicodeBlockNames.osmanya);
  static const osage = UnicodeBlock(0x66736, 0x66815, UnicodeBlockNames.osage);
  static const elbasan =
      UnicodeBlock(0x66816, 0x66863, UnicodeBlockNames.elbasan);
  static const caucasianAlbanian =
      UnicodeBlock(0x66864, 0x66927, UnicodeBlockNames.caucasianAlbanian);
  static const vithkuqi =
      UnicodeBlock(0x66928, 0x67007, UnicodeBlockNames.vithkuqi);
  static const linearA =
      UnicodeBlock(0x67072, 0x67455, UnicodeBlockNames.linearA);
  static const latinExtendedf =
      UnicodeBlock(0x67456, 0x67519, UnicodeBlockNames.latinExtendedf);
  static const cypriotSyllabary =
      UnicodeBlock(0x67584, 0x67647, UnicodeBlockNames.cypriotSyllabary);
  static const imperialAramaic =
      UnicodeBlock(0x67648, 0x67679, UnicodeBlockNames.imperialAramaic);
  static const palmyrene =
      UnicodeBlock(0x67680, 0x67711, UnicodeBlockNames.palmyrene);
  static const nabataean =
      UnicodeBlock(0x67712, 0x67759, UnicodeBlockNames.nabataean);
  static const hatran =
      UnicodeBlock(0x67808, 0x67839, UnicodeBlockNames.hatran);
  static const phoenician =
      UnicodeBlock(0x67840, 0x67871, UnicodeBlockNames.phoenician);
  static const lydian =
      UnicodeBlock(0x67872, 0x67903, UnicodeBlockNames.lydian);
  static const meroiticHieroglyphs =
      UnicodeBlock(0x67968, 0x67999, UnicodeBlockNames.meroiticHieroglyphs);
  static const meroiticCursive =
      UnicodeBlock(0x68000, 0x68095, UnicodeBlockNames.meroiticCursive);
  static const kharoshthi =
      UnicodeBlock(0x68096, 0x68191, UnicodeBlockNames.kharoshthi);
  static const oldSouthArabian =
      UnicodeBlock(0x68192, 0x68223, UnicodeBlockNames.oldSouthArabian);
  static const oldNorthArabian =
      UnicodeBlock(0x68224, 0x68255, UnicodeBlockNames.oldNorthArabian);
  static const manichaean =
      UnicodeBlock(0x68288, 0x68351, UnicodeBlockNames.manichaean);
  static const avestan =
      UnicodeBlock(0x68352, 0x68415, UnicodeBlockNames.avestan);
  static const inscriptionalParthian =
      UnicodeBlock(0x68416, 0x68447, UnicodeBlockNames.inscriptionalParthian);
  static const inscriptionalPahlavi =
      UnicodeBlock(0x68448, 0x68479, UnicodeBlockNames.inscriptionalPahlavi);
  static const psalterPahlavi =
      UnicodeBlock(0x68480, 0x68527, UnicodeBlockNames.psalterPahlavi);
  static const oldTurkic =
      UnicodeBlock(0x68608, 0x68687, UnicodeBlockNames.oldTurkic);
  static const oldHungarian =
      UnicodeBlock(0x68736, 0x68863, UnicodeBlockNames.oldHungarian);
  static const hanifiRohingya =
      UnicodeBlock(0x68864, 0x68927, UnicodeBlockNames.hanifiRohingya);
  static const rumiNumeralSymbols =
      UnicodeBlock(0x69216, 0x69247, UnicodeBlockNames.rumiNumeralSymbols);
  static const yezidi =
      UnicodeBlock(0x69248, 0x69311, UnicodeBlockNames.yezidi);
  static const arabicExtendedc =
      UnicodeBlock(0x69312, 0x69375, UnicodeBlockNames.arabicExtendedc);
  static const oldSogdian =
      UnicodeBlock(0x69376, 0x69423, UnicodeBlockNames.oldSogdian);
  static const sogdian =
      UnicodeBlock(0x69424, 0x69487, UnicodeBlockNames.sogdian);
  static const oldUyghur =
      UnicodeBlock(0x69488, 0x69551, UnicodeBlockNames.oldUyghur);
  static const chorasmian =
      UnicodeBlock(0x69552, 0x69599, UnicodeBlockNames.chorasmian);
  static const elymaic =
      UnicodeBlock(0x69600, 0x69631, UnicodeBlockNames.elymaic);
  static const brahmi =
      UnicodeBlock(0x69632, 0x69759, UnicodeBlockNames.brahmi);
  static const kaithi =
      UnicodeBlock(0x69760, 0x69839, UnicodeBlockNames.kaithi);
  static const soraSompeng =
      UnicodeBlock(0x69840, 0x69887, UnicodeBlockNames.soraSompeng);
  static const chakma =
      UnicodeBlock(0x69888, 0x69967, UnicodeBlockNames.chakma);
  static const mahajani =
      UnicodeBlock(0x69968, 0x70015, UnicodeBlockNames.mahajani);
  static const sharada =
      UnicodeBlock(0x70016, 0x70111, UnicodeBlockNames.sharada);
  static const sinhalaArchaicNumbers =
      UnicodeBlock(0x70112, 0x70143, UnicodeBlockNames.sinhalaArchaicNumbers);
  static const khojki =
      UnicodeBlock(0x70144, 0x70223, UnicodeBlockNames.khojki);
  static const multani =
      UnicodeBlock(0x70272, 0x70319, UnicodeBlockNames.multani);
  static const khudawadi =
      UnicodeBlock(0x70320, 0x70399, UnicodeBlockNames.khudawadi);
  static const grantha =
      UnicodeBlock(0x70400, 0x70527, UnicodeBlockNames.grantha);
  static const newa = UnicodeBlock(0x70656, 0x70783, UnicodeBlockNames.newa);
  static const tirhuta =
      UnicodeBlock(0x70784, 0x70879, UnicodeBlockNames.tirhuta);
  static const siddham =
      UnicodeBlock(0x71040, 0x71167, UnicodeBlockNames.siddham);
  static const modi = UnicodeBlock(0x71168, 0x71263, UnicodeBlockNames.modi);
  static const mongolianSupplement =
      UnicodeBlock(0x71264, 0x71295, UnicodeBlockNames.mongolianSupplement);
  static const takri = UnicodeBlock(0x71296, 0x71375, UnicodeBlockNames.takri);
  static const ahom = UnicodeBlock(0x71424, 0x71503, UnicodeBlockNames.ahom);
  static const dogra = UnicodeBlock(0x71680, 0x71759, UnicodeBlockNames.dogra);
  static const warangCiti =
      UnicodeBlock(0x71840, 0x71935, UnicodeBlockNames.warangCiti);
  static const divesAkuru =
      UnicodeBlock(0x71936, 0x72031, UnicodeBlockNames.divesAkuru);
  static const nandinagari =
      UnicodeBlock(0x72096, 0x72191, UnicodeBlockNames.nandinagari);
  static const zanabazarSquare =
      UnicodeBlock(0x72192, 0x72271, UnicodeBlockNames.zanabazarSquare);
  static const soyombo =
      UnicodeBlock(0x72272, 0x72367, UnicodeBlockNames.soyombo);
  static const unifiedCanadianAboriginalSyllabicsExtendeda = UnicodeBlock(
      0x72368,
      0x72383,
      UnicodeBlockNames.unifiedCanadianAboriginalSyllabicsExtendeda);
  static const pauCinHau =
      UnicodeBlock(0x72384, 0x72447, UnicodeBlockNames.pauCinHau);
  static const devanagariExtendeda =
      UnicodeBlock(0x72448, 0x72543, UnicodeBlockNames.devanagariExtendeda);
  static const bhaiksuki =
      UnicodeBlock(0x72704, 0x72815, UnicodeBlockNames.bhaiksuki);
  static const marchen =
      UnicodeBlock(0x72816, 0x72895, UnicodeBlockNames.marchen);
  static const masaramGondi =
      UnicodeBlock(0x72960, 0x73055, UnicodeBlockNames.masaramGondi);
  static const gunjalaGondi =
      UnicodeBlock(0x73056, 0x73135, UnicodeBlockNames.gunjalaGondi);
  static const makasar =
      UnicodeBlock(0x73440, 0x73471, UnicodeBlockNames.makasar);
  static const kawi = UnicodeBlock(0x73472, 0x73567, UnicodeBlockNames.kawi);
  static const lisuSupplement =
      UnicodeBlock(0x73648, 0x73663, UnicodeBlockNames.lisuSupplement);
  static const tamilSupplement =
      UnicodeBlock(0x73664, 0x73727, UnicodeBlockNames.tamilSupplement);
  static const cuneiform =
      UnicodeBlock(0x73728, 0x74751, UnicodeBlockNames.cuneiform);
  static const cuneiformNumbersAndPunctuation = UnicodeBlock(
      0x74752, 0x74879, UnicodeBlockNames.cuneiformNumbersAndPunctuation);
  static const earlyDynasticCuneiform =
      UnicodeBlock(0x74880, 0x75087, UnicodeBlockNames.earlyDynasticCuneiform);
  static const cyprominoan =
      UnicodeBlock(0x77712, 0x77823, UnicodeBlockNames.cyprominoan);
  static const egyptianHieroglyphs =
      UnicodeBlock(0x77824, 0x78895, UnicodeBlockNames.egyptianHieroglyphs);
  static const egyptianHieroglyphFormatControls = UnicodeBlock(
      0x78896, 0x78943, UnicodeBlockNames.egyptianHieroglyphFormatControls);
  static const anatolianHieroglyphs =
      UnicodeBlock(0x82944, 0x83583, UnicodeBlockNames.anatolianHieroglyphs);
  static const bamumSupplement =
      UnicodeBlock(0x92160, 0x92735, UnicodeBlockNames.bamumSupplement);
  static const mro = UnicodeBlock(0x92736, 0x92783, UnicodeBlockNames.mro);
  static const tangsa =
      UnicodeBlock(0x92784, 0x92879, UnicodeBlockNames.tangsa);
  static const bassaVah =
      UnicodeBlock(0x92880, 0x92927, UnicodeBlockNames.bassaVah);
  static const pahawhHmong =
      UnicodeBlock(0x92928, 0x93071, UnicodeBlockNames.pahawhHmong);
  static const medefaidrin =
      UnicodeBlock(0x93760, 0x93855, UnicodeBlockNames.medefaidrin);
  static const miao = UnicodeBlock(0x93952, 0x94111, UnicodeBlockNames.miao);
  static const ideographicSymbolsAndPunctuation = UnicodeBlock(
      0x94176, 0x94207, UnicodeBlockNames.ideographicSymbolsAndPunctuation);
  static const tangut =
      UnicodeBlock(0x94208, 0x100351, UnicodeBlockNames.tangut);
  static const tangutComponents =
      UnicodeBlock(0x100352, 0x101119, UnicodeBlockNames.tangutComponents);
  static const khitanSmallScript =
      UnicodeBlock(0x101120, 0x101631, UnicodeBlockNames.khitanSmallScript);
  static const tangutSupplement =
      UnicodeBlock(0x101632, 0x101759, UnicodeBlockNames.tangutSupplement);
  static const kanaExtendedb =
      UnicodeBlock(0x110576, 0x110591, UnicodeBlockNames.kanaExtendedb);
  static const kanaSupplement =
      UnicodeBlock(0x110592, 0x110847, UnicodeBlockNames.kanaSupplement);
  static const kanaExtendeda =
      UnicodeBlock(0x110848, 0x110895, UnicodeBlockNames.kanaExtendeda);
  static const smallKanaExtension =
      UnicodeBlock(0x110896, 0x110959, UnicodeBlockNames.smallKanaExtension);
  static const nushu =
      UnicodeBlock(0x110960, 0x111359, UnicodeBlockNames.nushu);
  static const duployan =
      UnicodeBlock(0x113664, 0x113823, UnicodeBlockNames.duployan);
  static const shorthandFormatControls = UnicodeBlock(
      0x113824, 0x113839, UnicodeBlockNames.shorthandFormatControls);
  static const znamennyMusicalNotation = UnicodeBlock(
      0x118528, 0x118735, UnicodeBlockNames.znamennyMusicalNotation);
  static const byzantineMusicalSymbols = UnicodeBlock(
      0x118784, 0x119039, UnicodeBlockNames.byzantineMusicalSymbols);
  static const musicalSymbols =
      UnicodeBlock(0x119040, 0x119295, UnicodeBlockNames.musicalSymbols);
  static const ancientGreekMusicalNotation = UnicodeBlock(
      0x119296, 0x119375, UnicodeBlockNames.ancientGreekMusicalNotation);
  static const kaktovikNumerals =
      UnicodeBlock(0x119488, 0x119519, UnicodeBlockNames.kaktovikNumerals);
  static const mayanNumerals =
      UnicodeBlock(0x119520, 0x119551, UnicodeBlockNames.mayanNumerals);
  static const taiXuanJingSymbols =
      UnicodeBlock(0x119552, 0x119647, UnicodeBlockNames.taiXuanJingSymbols);
  static const countingRodNumerals =
      UnicodeBlock(0x119648, 0x119679, UnicodeBlockNames.countingRodNumerals);
  static const mathematicalAlphanumericSymbols = UnicodeBlock(
      0x119808, 0x120831, UnicodeBlockNames.mathematicalAlphanumericSymbols);
  static const suttonSignwriting =
      UnicodeBlock(0x120832, 0x121519, UnicodeBlockNames.suttonSignwriting);
  static const latinExtendedg =
      UnicodeBlock(0x122624, 0x122879, UnicodeBlockNames.latinExtendedg);
  static const glagoliticSupplement =
      UnicodeBlock(0x122880, 0x122927, UnicodeBlockNames.glagoliticSupplement);
  static const cyrillicExtendedd =
      UnicodeBlock(0x122928, 0x123023, UnicodeBlockNames.cyrillicExtendedd);
  static const nyiakengPuachueHmong =
      UnicodeBlock(0x123136, 0x123215, UnicodeBlockNames.nyiakengPuachueHmong);
  static const toto = UnicodeBlock(0x123536, 0x123583, UnicodeBlockNames.toto);
  static const wancho =
      UnicodeBlock(0x123584, 0x123647, UnicodeBlockNames.wancho);
  static const nagMundari =
      UnicodeBlock(0x124112, 0x124159, UnicodeBlockNames.nagMundari);
  static const ethiopicExtendedb =
      UnicodeBlock(0x124896, 0x124927, UnicodeBlockNames.ethiopicExtendedb);
  static const mendeKikakui =
      UnicodeBlock(0x124928, 0x125151, UnicodeBlockNames.mendeKikakui);
  static const adlam =
      UnicodeBlock(0x125184, 0x125279, UnicodeBlockNames.adlam);
  static const indicSiyaqNumbers =
      UnicodeBlock(0x126064, 0x126143, UnicodeBlockNames.indicSiyaqNumbers);
  static const ottomanSiyaqNumbers =
      UnicodeBlock(0x126208, 0x126287, UnicodeBlockNames.ottomanSiyaqNumbers);
  static const arabicMathematicalAlphabeticSymbols = UnicodeBlock(0x126464,
      0x126719, UnicodeBlockNames.arabicMathematicalAlphabeticSymbols);
  static const mahjongTiles =
      UnicodeBlock(0x126976, 0x127023, UnicodeBlockNames.mahjongTiles);
  static const dominoTiles =
      UnicodeBlock(0x127024, 0x127135, UnicodeBlockNames.dominoTiles);
  static const playingCards =
      UnicodeBlock(0x127136, 0x127231, UnicodeBlockNames.playingCards);
  static const enclosedAlphanumericSupplement = UnicodeBlock(
      0x127232, 0x127487, UnicodeBlockNames.enclosedAlphanumericSupplement);
  static const enclosedIdeographicSupplement = UnicodeBlock(
      0x127488, 0x127743, UnicodeBlockNames.enclosedIdeographicSupplement);
  static const miscellaneousSymbolsAndPictographs = UnicodeBlock(
      0x127744, 0x128511, UnicodeBlockNames.miscellaneousSymbolsAndPictographs);
  static const emoticons =
      UnicodeBlock(0x128512, 0x128591, UnicodeBlockNames.emoticons);
  static const ornamentalDingbats =
      UnicodeBlock(0x128592, 0x128639, UnicodeBlockNames.ornamentalDingbats);
  static const transportAndMapSymbols = UnicodeBlock(
      0x128640, 0x128767, UnicodeBlockNames.transportAndMapSymbols);
  static const alchemicalSymbols =
      UnicodeBlock(0x128768, 0x128895, UnicodeBlockNames.alchemicalSymbols);
  static const geometricShapesExtended = UnicodeBlock(
      0x128896, 0x129023, UnicodeBlockNames.geometricShapesExtended);
  static const supplementalArrowsc =
      UnicodeBlock(0x129024, 0x129279, UnicodeBlockNames.supplementalArrowsc);
  static const supplementalSymbolsAndPictographs = UnicodeBlock(
      0x129280, 0x129535, UnicodeBlockNames.supplementalSymbolsAndPictographs);
  static const chessSymbols =
      UnicodeBlock(0x129536, 0x129647, UnicodeBlockNames.chessSymbols);
  static const symbolsAndPictographsExtendeda = UnicodeBlock(
      0x129648, 0x129791, UnicodeBlockNames.symbolsAndPictographsExtendeda);
  static const symbolsForLegacyComputing = UnicodeBlock(
      0x129792, 0x130047, UnicodeBlockNames.symbolsForLegacyComputing);
  static const cjkUnifiedIdeographsExtensionB = UnicodeBlock(
      0x131072, 0x173791, UnicodeBlockNames.cjkUnifiedIdeographsExtensionB);
  static const cjkUnifiedIdeographsExtensionC = UnicodeBlock(
      0x173824, 0x177983, UnicodeBlockNames.cjkUnifiedIdeographsExtensionC);
  static const cjkUnifiedIdeographsExtensionD = UnicodeBlock(
      0x177984, 0x178207, UnicodeBlockNames.cjkUnifiedIdeographsExtensionD);
  static const cjkUnifiedIdeographsExtensionE = UnicodeBlock(
      0x178208, 0x183983, UnicodeBlockNames.cjkUnifiedIdeographsExtensionE);
  static const cjkUnifiedIdeographsExtensionF = UnicodeBlock(
      0x183984, 0x191471, UnicodeBlockNames.cjkUnifiedIdeographsExtensionF);
  static const cjkUnifiedIdeographsExtensionI = UnicodeBlock(
      0x191472, 0x192095, UnicodeBlockNames.cjkUnifiedIdeographsExtensionI);
  static const cjkCompatibilityIdeographsSupplement = UnicodeBlock(0x194560,
      0x195103, UnicodeBlockNames.cjkCompatibilityIdeographsSupplement);
  static const cjkUnifiedIdeographsExtensionG = UnicodeBlock(
      0x196608, 0x201551, UnicodeBlockNames.cjkUnifiedIdeographsExtensionG);
  static const cjkUnifiedIdeographsExtensionH = UnicodeBlock(
      0x201552, 0x205743, UnicodeBlockNames.cjkUnifiedIdeographsExtensionH);
  static const tags = UnicodeBlock(0x917504, 0x917631, UnicodeBlockNames.tags);
  static const variationSelectorsSupplement = UnicodeBlock(
      0x917760, 0x917999, UnicodeBlockNames.variationSelectorsSupplement);
  static const supplementaryPrivateUseAreaa = UnicodeBlock(
      0x983040, 0x1048575, UnicodeBlockNames.supplementaryPrivateUseAreaa);
  static const supplementaryPrivateUseAreab = UnicodeBlock(
      0x1048576, 0x1114111, UnicodeBlockNames.supplementaryPrivateUseAreab);
      
  static Map<String, UnicodeBlock> blockMap = const {
    UnicodeBlockNames.basicLatin: UnicodeBlockConstant.basicLatin,
    UnicodeBlockNames.latin1Supplement: UnicodeBlockConstant.latin1Supplement,
    UnicodeBlockNames.latinExtendeda: UnicodeBlockConstant.latinExtendeda,
    UnicodeBlockNames.latinExtendedb: UnicodeBlockConstant.latinExtendedb,
    UnicodeBlockNames.ipaExtensions: UnicodeBlockConstant.ipaExtensions,
    UnicodeBlockNames.spacingModifierLetters:
        UnicodeBlockConstant.spacingModifierLetters,
    UnicodeBlockNames.combiningDiacriticalMarks:
        UnicodeBlockConstant.combiningDiacriticalMarks,
    UnicodeBlockNames.greekAndCoptic: UnicodeBlockConstant.greekAndCoptic,
    UnicodeBlockNames.cyrillic: UnicodeBlockConstant.cyrillic,
    UnicodeBlockNames.cyrillicSupplement:
        UnicodeBlockConstant.cyrillicSupplement,
    UnicodeBlockNames.armenian: UnicodeBlockConstant.armenian,
    UnicodeBlockNames.hebrew: UnicodeBlockConstant.hebrew,
    UnicodeBlockNames.arabic: UnicodeBlockConstant.arabic,
    UnicodeBlockNames.syriac: UnicodeBlockConstant.syriac,
    UnicodeBlockNames.arabicSupplement: UnicodeBlockConstant.arabicSupplement,
    UnicodeBlockNames.thaana: UnicodeBlockConstant.thaana,
    UnicodeBlockNames.nko: UnicodeBlockConstant.nko,
    UnicodeBlockNames.samaritan: UnicodeBlockConstant.samaritan,
    UnicodeBlockNames.mandaic: UnicodeBlockConstant.mandaic,
    UnicodeBlockNames.syriacSupplement: UnicodeBlockConstant.syriacSupplement,
    UnicodeBlockNames.arabicExtendedb: UnicodeBlockConstant.arabicExtendedb,
    UnicodeBlockNames.arabicExtendeda: UnicodeBlockConstant.arabicExtendeda,
    UnicodeBlockNames.devanagari: UnicodeBlockConstant.devanagari,
    UnicodeBlockNames.bengali: UnicodeBlockConstant.bengali,
    UnicodeBlockNames.gurmukhi: UnicodeBlockConstant.gurmukhi,
    UnicodeBlockNames.gujarati: UnicodeBlockConstant.gujarati,
    UnicodeBlockNames.oriya: UnicodeBlockConstant.oriya,
    UnicodeBlockNames.tamil: UnicodeBlockConstant.tamil,
    UnicodeBlockNames.telugu: UnicodeBlockConstant.telugu,
    UnicodeBlockNames.kannada: UnicodeBlockConstant.kannada,
    UnicodeBlockNames.malayalam: UnicodeBlockConstant.malayalam,
    UnicodeBlockNames.sinhala: UnicodeBlockConstant.sinhala,
    UnicodeBlockNames.thai: UnicodeBlockConstant.thai,
    UnicodeBlockNames.lao: UnicodeBlockConstant.lao,
    UnicodeBlockNames.tibetan: UnicodeBlockConstant.tibetan,
    UnicodeBlockNames.myanmar: UnicodeBlockConstant.myanmar,
    UnicodeBlockNames.georgian: UnicodeBlockConstant.georgian,
    UnicodeBlockNames.hangulJamo: UnicodeBlockConstant.hangulJamo,
    UnicodeBlockNames.ethiopic: UnicodeBlockConstant.ethiopic,
    UnicodeBlockNames.ethiopicSupplement:
        UnicodeBlockConstant.ethiopicSupplement,
    UnicodeBlockNames.cherokee: UnicodeBlockConstant.cherokee,
    UnicodeBlockNames.unifiedCanadianAboriginalSyllabics:
        UnicodeBlockConstant.unifiedCanadianAboriginalSyllabics,
    UnicodeBlockNames.ogham: UnicodeBlockConstant.ogham,
    UnicodeBlockNames.runic: UnicodeBlockConstant.runic,
    UnicodeBlockNames.tagalog: UnicodeBlockConstant.tagalog,
    UnicodeBlockNames.hanunoo: UnicodeBlockConstant.hanunoo,
    UnicodeBlockNames.buhid: UnicodeBlockConstant.buhid,
    UnicodeBlockNames.tagbanwa: UnicodeBlockConstant.tagbanwa,
    UnicodeBlockNames.khmer: UnicodeBlockConstant.khmer,
    UnicodeBlockNames.mongolian: UnicodeBlockConstant.mongolian,
    UnicodeBlockNames.unifiedCanadianAboriginalSyllabicsExtended:
        UnicodeBlockConstant.unifiedCanadianAboriginalSyllabicsExtended,
    UnicodeBlockNames.limbu: UnicodeBlockConstant.limbu,
    UnicodeBlockNames.taiLe: UnicodeBlockConstant.taiLe,
    UnicodeBlockNames.newTaiLue: UnicodeBlockConstant.newTaiLue,
    UnicodeBlockNames.khmerSymbols: UnicodeBlockConstant.khmerSymbols,
    UnicodeBlockNames.buginese: UnicodeBlockConstant.buginese,
    UnicodeBlockNames.taiTham: UnicodeBlockConstant.taiTham,
    UnicodeBlockNames.combiningDiacriticalMarksExtended:
        UnicodeBlockConstant.combiningDiacriticalMarksExtended,
    UnicodeBlockNames.balinese: UnicodeBlockConstant.balinese,
    UnicodeBlockNames.sundanese: UnicodeBlockConstant.sundanese,
    UnicodeBlockNames.batak: UnicodeBlockConstant.batak,
    UnicodeBlockNames.lepcha: UnicodeBlockConstant.lepcha,
    UnicodeBlockNames.olChiki: UnicodeBlockConstant.olChiki,
    UnicodeBlockNames.cyrillicExtendedc: UnicodeBlockConstant.cyrillicExtendedc,
    UnicodeBlockNames.georgianExtended: UnicodeBlockConstant.georgianExtended,
    UnicodeBlockNames.sundaneseSupplement:
        UnicodeBlockConstant.sundaneseSupplement,
    UnicodeBlockNames.vedicExtensions: UnicodeBlockConstant.vedicExtensions,
    UnicodeBlockNames.phoneticExtensions:
        UnicodeBlockConstant.phoneticExtensions,
    UnicodeBlockNames.phoneticExtensionsSupplement:
        UnicodeBlockConstant.phoneticExtensionsSupplement,
    UnicodeBlockNames.combiningDiacriticalMarksSupplement:
        UnicodeBlockConstant.combiningDiacriticalMarksSupplement,
    UnicodeBlockNames.latinExtendedAdditional:
        UnicodeBlockConstant.latinExtendedAdditional,
    UnicodeBlockNames.greekExtended: UnicodeBlockConstant.greekExtended,
    UnicodeBlockNames.generalPunctuation:
        UnicodeBlockConstant.generalPunctuation,
    UnicodeBlockNames.superscriptsAndSubscripts:
        UnicodeBlockConstant.superscriptsAndSubscripts,
    UnicodeBlockNames.currencySymbols: UnicodeBlockConstant.currencySymbols,
    UnicodeBlockNames.combiningDiacriticalMarksForSymbols:
        UnicodeBlockConstant.combiningDiacriticalMarksForSymbols,
    UnicodeBlockNames.letterlikeSymbols: UnicodeBlockConstant.letterlikeSymbols,
    UnicodeBlockNames.numberForms: UnicodeBlockConstant.numberForms,
    UnicodeBlockNames.arrows: UnicodeBlockConstant.arrows,
    UnicodeBlockNames.mathematicalOperators:
        UnicodeBlockConstant.mathematicalOperators,
    UnicodeBlockNames.miscellaneousTechnical:
        UnicodeBlockConstant.miscellaneousTechnical,
    UnicodeBlockNames.controlPictures: UnicodeBlockConstant.controlPictures,
    UnicodeBlockNames.opticalCharacterRecognition:
        UnicodeBlockConstant.opticalCharacterRecognition,
    UnicodeBlockNames.enclosedAlphanumerics:
        UnicodeBlockConstant.enclosedAlphanumerics,
    UnicodeBlockNames.boxDrawing: UnicodeBlockConstant.boxDrawing,
    UnicodeBlockNames.blockElements: UnicodeBlockConstant.blockElements,
    UnicodeBlockNames.geometricShapes: UnicodeBlockConstant.geometricShapes,
    UnicodeBlockNames.miscellaneousSymbols:
        UnicodeBlockConstant.miscellaneousSymbols,
    UnicodeBlockNames.dingbats: UnicodeBlockConstant.dingbats,
    UnicodeBlockNames.miscellaneousMathematicalSymbolsa:
        UnicodeBlockConstant.miscellaneousMathematicalSymbolsa,
    UnicodeBlockNames.supplementalArrowsa:
        UnicodeBlockConstant.supplementalArrowsa,
    UnicodeBlockNames.braillePatterns: UnicodeBlockConstant.braillePatterns,
    UnicodeBlockNames.supplementalArrowsb:
        UnicodeBlockConstant.supplementalArrowsb,
    UnicodeBlockNames.miscellaneousMathematicalSymbolsb:
        UnicodeBlockConstant.miscellaneousMathematicalSymbolsb,
    UnicodeBlockNames.supplementalMathematicalOperators:
        UnicodeBlockConstant.supplementalMathematicalOperators,
    UnicodeBlockNames.miscellaneousSymbolsAndArrows:
        UnicodeBlockConstant.miscellaneousSymbolsAndArrows,
    UnicodeBlockNames.glagolitic: UnicodeBlockConstant.glagolitic,
    UnicodeBlockNames.latinExtendedc: UnicodeBlockConstant.latinExtendedc,
    UnicodeBlockNames.coptic: UnicodeBlockConstant.coptic,
    UnicodeBlockNames.georgianSupplement:
        UnicodeBlockConstant.georgianSupplement,
    UnicodeBlockNames.tifinagh: UnicodeBlockConstant.tifinagh,
    UnicodeBlockNames.ethiopicExtended: UnicodeBlockConstant.ethiopicExtended,
    UnicodeBlockNames.cyrillicExtendeda: UnicodeBlockConstant.cyrillicExtendeda,
    UnicodeBlockNames.supplementalPunctuation:
        UnicodeBlockConstant.supplementalPunctuation,
    UnicodeBlockNames.cjkRadicalsSupplement:
        UnicodeBlockConstant.cjkRadicalsSupplement,
    UnicodeBlockNames.kangxiRadicals: UnicodeBlockConstant.kangxiRadicals,
    UnicodeBlockNames.ideographicDescriptionCharacters:
        UnicodeBlockConstant.ideographicDescriptionCharacters,
    UnicodeBlockNames.cjkSymbolsAndPunctuation:
        UnicodeBlockConstant.cjkSymbolsAndPunctuation,
    UnicodeBlockNames.hiragana: UnicodeBlockConstant.hiragana,
    UnicodeBlockNames.katakana: UnicodeBlockConstant.katakana,
    UnicodeBlockNames.bopomofo: UnicodeBlockConstant.bopomofo,
    UnicodeBlockNames.hangulCompatibilityJamo:
        UnicodeBlockConstant.hangulCompatibilityJamo,
    UnicodeBlockNames.kanbun: UnicodeBlockConstant.kanbun,
    UnicodeBlockNames.bopomofoExtended: UnicodeBlockConstant.bopomofoExtended,
    UnicodeBlockNames.cjkStrokes: UnicodeBlockConstant.cjkStrokes,
    UnicodeBlockNames.katakanaPhoneticExtensions:
        UnicodeBlockConstant.katakanaPhoneticExtensions,
    UnicodeBlockNames.enclosedCjkLettersAndMonths:
        UnicodeBlockConstant.enclosedCjkLettersAndMonths,
    UnicodeBlockNames.cjkCompatibility: UnicodeBlockConstant.cjkCompatibility,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionA:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionA,
    UnicodeBlockNames.yijingHexagramSymbols:
        UnicodeBlockConstant.yijingHexagramSymbols,
    UnicodeBlockNames.cjkUnifiedIdeographs:
        UnicodeBlockConstant.cjkUnifiedIdeographs,
    UnicodeBlockNames.yiSyllables: UnicodeBlockConstant.yiSyllables,
    UnicodeBlockNames.yiRadicals: UnicodeBlockConstant.yiRadicals,
    UnicodeBlockNames.lisu: UnicodeBlockConstant.lisu,
    UnicodeBlockNames.vai: UnicodeBlockConstant.vai,
    UnicodeBlockNames.cyrillicExtendedb: UnicodeBlockConstant.cyrillicExtendedb,
    UnicodeBlockNames.bamum: UnicodeBlockConstant.bamum,
    UnicodeBlockNames.modifierToneLetters:
        UnicodeBlockConstant.modifierToneLetters,
    UnicodeBlockNames.latinExtendedd: UnicodeBlockConstant.latinExtendedd,
    UnicodeBlockNames.sylotiNagri: UnicodeBlockConstant.sylotiNagri,
    UnicodeBlockNames.commonIndicNumberForms:
        UnicodeBlockConstant.commonIndicNumberForms,
    UnicodeBlockNames.phagspa: UnicodeBlockConstant.phagspa,
    UnicodeBlockNames.saurashtra: UnicodeBlockConstant.saurashtra,
    UnicodeBlockNames.devanagariExtended:
        UnicodeBlockConstant.devanagariExtended,
    UnicodeBlockNames.kayahLi: UnicodeBlockConstant.kayahLi,
    UnicodeBlockNames.rejang: UnicodeBlockConstant.rejang,
    UnicodeBlockNames.hangulJamoExtendeda:
        UnicodeBlockConstant.hangulJamoExtendeda,
    UnicodeBlockNames.javanese: UnicodeBlockConstant.javanese,
    UnicodeBlockNames.myanmarExtendedb: UnicodeBlockConstant.myanmarExtendedb,
    UnicodeBlockNames.cham: UnicodeBlockConstant.cham,
    UnicodeBlockNames.myanmarExtendeda: UnicodeBlockConstant.myanmarExtendeda,
    UnicodeBlockNames.taiViet: UnicodeBlockConstant.taiViet,
    UnicodeBlockNames.meeteiMayekExtensions:
        UnicodeBlockConstant.meeteiMayekExtensions,
    UnicodeBlockNames.ethiopicExtendeda: UnicodeBlockConstant.ethiopicExtendeda,
    UnicodeBlockNames.latinExtendede: UnicodeBlockConstant.latinExtendede,
    UnicodeBlockNames.cherokeeSupplement:
        UnicodeBlockConstant.cherokeeSupplement,
    UnicodeBlockNames.meeteiMayek: UnicodeBlockConstant.meeteiMayek,
    UnicodeBlockNames.hangulSyllables: UnicodeBlockConstant.hangulSyllables,
    UnicodeBlockNames.hangulJamoExtendedb:
        UnicodeBlockConstant.hangulJamoExtendedb,
    UnicodeBlockNames.highSurrogates: UnicodeBlockConstant.highSurrogates,
    UnicodeBlockNames.highPrivateUseSurrogates:
        UnicodeBlockConstant.highPrivateUseSurrogates,
    UnicodeBlockNames.lowSurrogates: UnicodeBlockConstant.lowSurrogates,
    UnicodeBlockNames.privateUseArea: UnicodeBlockConstant.privateUseArea,
    UnicodeBlockNames.cjkCompatibilityIdeographs:
        UnicodeBlockConstant.cjkCompatibilityIdeographs,
    UnicodeBlockNames.alphabeticPresentationForms:
        UnicodeBlockConstant.alphabeticPresentationForms,
    UnicodeBlockNames.arabicPresentationFormsa:
        UnicodeBlockConstant.arabicPresentationFormsa,
    UnicodeBlockNames.variationSelectors:
        UnicodeBlockConstant.variationSelectors,
    UnicodeBlockNames.verticalForms: UnicodeBlockConstant.verticalForms,
    UnicodeBlockNames.combiningHalfMarks:
        UnicodeBlockConstant.combiningHalfMarks,
    UnicodeBlockNames.cjkCompatibilityForms:
        UnicodeBlockConstant.cjkCompatibilityForms,
    UnicodeBlockNames.smallFormVariants: UnicodeBlockConstant.smallFormVariants,
    UnicodeBlockNames.arabicPresentationFormsb:
        UnicodeBlockConstant.arabicPresentationFormsb,
    UnicodeBlockNames.halfwidthAndFullwidthForms:
        UnicodeBlockConstant.halfwidthAndFullwidthForms,
    UnicodeBlockNames.specials: UnicodeBlockConstant.specials,
    UnicodeBlockNames.linearBSyllabary: UnicodeBlockConstant.linearBSyllabary,
    UnicodeBlockNames.linearBIdeograms: UnicodeBlockConstant.linearBIdeograms,
    UnicodeBlockNames.aegeanNumbers: UnicodeBlockConstant.aegeanNumbers,
    UnicodeBlockNames.ancientGreekNumbers:
        UnicodeBlockConstant.ancientGreekNumbers,
    UnicodeBlockNames.ancientSymbols: UnicodeBlockConstant.ancientSymbols,
    UnicodeBlockNames.phaistosDisc: UnicodeBlockConstant.phaistosDisc,
    UnicodeBlockNames.lycian: UnicodeBlockConstant.lycian,
    UnicodeBlockNames.carian: UnicodeBlockConstant.carian,
    UnicodeBlockNames.copticEpactNumbers:
        UnicodeBlockConstant.copticEpactNumbers,
    UnicodeBlockNames.oldItalic: UnicodeBlockConstant.oldItalic,
    UnicodeBlockNames.gothic: UnicodeBlockConstant.gothic,
    UnicodeBlockNames.oldPermic: UnicodeBlockConstant.oldPermic,
    UnicodeBlockNames.ugaritic: UnicodeBlockConstant.ugaritic,
    UnicodeBlockNames.oldPersian: UnicodeBlockConstant.oldPersian,
    UnicodeBlockNames.deseret: UnicodeBlockConstant.deseret,
    UnicodeBlockNames.shavian: UnicodeBlockConstant.shavian,
    UnicodeBlockNames.osmanya: UnicodeBlockConstant.osmanya,
    UnicodeBlockNames.osage: UnicodeBlockConstant.osage,
    UnicodeBlockNames.elbasan: UnicodeBlockConstant.elbasan,
    UnicodeBlockNames.caucasianAlbanian: UnicodeBlockConstant.caucasianAlbanian,
    UnicodeBlockNames.vithkuqi: UnicodeBlockConstant.vithkuqi,
    UnicodeBlockNames.linearA: UnicodeBlockConstant.linearA,
    UnicodeBlockNames.latinExtendedf: UnicodeBlockConstant.latinExtendedf,
    UnicodeBlockNames.cypriotSyllabary: UnicodeBlockConstant.cypriotSyllabary,
    UnicodeBlockNames.imperialAramaic: UnicodeBlockConstant.imperialAramaic,
    UnicodeBlockNames.palmyrene: UnicodeBlockConstant.palmyrene,
    UnicodeBlockNames.nabataean: UnicodeBlockConstant.nabataean,
    UnicodeBlockNames.hatran: UnicodeBlockConstant.hatran,
    UnicodeBlockNames.phoenician: UnicodeBlockConstant.phoenician,
    UnicodeBlockNames.lydian: UnicodeBlockConstant.lydian,
    UnicodeBlockNames.meroiticHieroglyphs:
        UnicodeBlockConstant.meroiticHieroglyphs,
    UnicodeBlockNames.meroiticCursive: UnicodeBlockConstant.meroiticCursive,
    UnicodeBlockNames.kharoshthi: UnicodeBlockConstant.kharoshthi,
    UnicodeBlockNames.oldSouthArabian: UnicodeBlockConstant.oldSouthArabian,
    UnicodeBlockNames.oldNorthArabian: UnicodeBlockConstant.oldNorthArabian,
    UnicodeBlockNames.manichaean: UnicodeBlockConstant.manichaean,
    UnicodeBlockNames.avestan: UnicodeBlockConstant.avestan,
    UnicodeBlockNames.inscriptionalParthian:
        UnicodeBlockConstant.inscriptionalParthian,
    UnicodeBlockNames.inscriptionalPahlavi:
        UnicodeBlockConstant.inscriptionalPahlavi,
    UnicodeBlockNames.psalterPahlavi: UnicodeBlockConstant.psalterPahlavi,
    UnicodeBlockNames.oldTurkic: UnicodeBlockConstant.oldTurkic,
    UnicodeBlockNames.oldHungarian: UnicodeBlockConstant.oldHungarian,
    UnicodeBlockNames.hanifiRohingya: UnicodeBlockConstant.hanifiRohingya,
    UnicodeBlockNames.rumiNumeralSymbols:
        UnicodeBlockConstant.rumiNumeralSymbols,
    UnicodeBlockNames.yezidi: UnicodeBlockConstant.yezidi,
    UnicodeBlockNames.arabicExtendedc: UnicodeBlockConstant.arabicExtendedc,
    UnicodeBlockNames.oldSogdian: UnicodeBlockConstant.oldSogdian,
    UnicodeBlockNames.sogdian: UnicodeBlockConstant.sogdian,
    UnicodeBlockNames.oldUyghur: UnicodeBlockConstant.oldUyghur,
    UnicodeBlockNames.chorasmian: UnicodeBlockConstant.chorasmian,
    UnicodeBlockNames.elymaic: UnicodeBlockConstant.elymaic,
    UnicodeBlockNames.brahmi: UnicodeBlockConstant.brahmi,
    UnicodeBlockNames.kaithi: UnicodeBlockConstant.kaithi,
    UnicodeBlockNames.soraSompeng: UnicodeBlockConstant.soraSompeng,
    UnicodeBlockNames.chakma: UnicodeBlockConstant.chakma,
    UnicodeBlockNames.mahajani: UnicodeBlockConstant.mahajani,
    UnicodeBlockNames.sharada: UnicodeBlockConstant.sharada,
    UnicodeBlockNames.sinhalaArchaicNumbers:
        UnicodeBlockConstant.sinhalaArchaicNumbers,
    UnicodeBlockNames.khojki: UnicodeBlockConstant.khojki,
    UnicodeBlockNames.multani: UnicodeBlockConstant.multani,
    UnicodeBlockNames.khudawadi: UnicodeBlockConstant.khudawadi,
    UnicodeBlockNames.grantha: UnicodeBlockConstant.grantha,
    UnicodeBlockNames.newa: UnicodeBlockConstant.newa,
    UnicodeBlockNames.tirhuta: UnicodeBlockConstant.tirhuta,
    UnicodeBlockNames.siddham: UnicodeBlockConstant.siddham,
    UnicodeBlockNames.modi: UnicodeBlockConstant.modi,
    UnicodeBlockNames.mongolianSupplement:
        UnicodeBlockConstant.mongolianSupplement,
    UnicodeBlockNames.takri: UnicodeBlockConstant.takri,
    UnicodeBlockNames.ahom: UnicodeBlockConstant.ahom,
    UnicodeBlockNames.dogra: UnicodeBlockConstant.dogra,
    UnicodeBlockNames.warangCiti: UnicodeBlockConstant.warangCiti,
    UnicodeBlockNames.divesAkuru: UnicodeBlockConstant.divesAkuru,
    UnicodeBlockNames.nandinagari: UnicodeBlockConstant.nandinagari,
    UnicodeBlockNames.zanabazarSquare: UnicodeBlockConstant.zanabazarSquare,
    UnicodeBlockNames.soyombo: UnicodeBlockConstant.soyombo,
    UnicodeBlockNames.unifiedCanadianAboriginalSyllabicsExtendeda:
        UnicodeBlockConstant.unifiedCanadianAboriginalSyllabicsExtendeda,
    UnicodeBlockNames.pauCinHau: UnicodeBlockConstant.pauCinHau,
    UnicodeBlockNames.devanagariExtendeda:
        UnicodeBlockConstant.devanagariExtendeda,
    UnicodeBlockNames.bhaiksuki: UnicodeBlockConstant.bhaiksuki,
    UnicodeBlockNames.marchen: UnicodeBlockConstant.marchen,
    UnicodeBlockNames.masaramGondi: UnicodeBlockConstant.masaramGondi,
    UnicodeBlockNames.gunjalaGondi: UnicodeBlockConstant.gunjalaGondi,
    UnicodeBlockNames.makasar: UnicodeBlockConstant.makasar,
    UnicodeBlockNames.kawi: UnicodeBlockConstant.kawi,
    UnicodeBlockNames.lisuSupplement: UnicodeBlockConstant.lisuSupplement,
    UnicodeBlockNames.tamilSupplement: UnicodeBlockConstant.tamilSupplement,
    UnicodeBlockNames.cuneiform: UnicodeBlockConstant.cuneiform,
    UnicodeBlockNames.cuneiformNumbersAndPunctuation:
        UnicodeBlockConstant.cuneiformNumbersAndPunctuation,
    UnicodeBlockNames.earlyDynasticCuneiform:
        UnicodeBlockConstant.earlyDynasticCuneiform,
    UnicodeBlockNames.cyprominoan: UnicodeBlockConstant.cyprominoan,
    UnicodeBlockNames.egyptianHieroglyphs:
        UnicodeBlockConstant.egyptianHieroglyphs,
    UnicodeBlockNames.egyptianHieroglyphFormatControls:
        UnicodeBlockConstant.egyptianHieroglyphFormatControls,
    UnicodeBlockNames.anatolianHieroglyphs:
        UnicodeBlockConstant.anatolianHieroglyphs,
    UnicodeBlockNames.bamumSupplement: UnicodeBlockConstant.bamumSupplement,
    UnicodeBlockNames.mro: UnicodeBlockConstant.mro,
    UnicodeBlockNames.tangsa: UnicodeBlockConstant.tangsa,
    UnicodeBlockNames.bassaVah: UnicodeBlockConstant.bassaVah,
    UnicodeBlockNames.pahawhHmong: UnicodeBlockConstant.pahawhHmong,
    UnicodeBlockNames.medefaidrin: UnicodeBlockConstant.medefaidrin,
    UnicodeBlockNames.miao: UnicodeBlockConstant.miao,
    UnicodeBlockNames.ideographicSymbolsAndPunctuation:
        UnicodeBlockConstant.ideographicSymbolsAndPunctuation,
    UnicodeBlockNames.tangut: UnicodeBlockConstant.tangut,
    UnicodeBlockNames.tangutComponents: UnicodeBlockConstant.tangutComponents,
    UnicodeBlockNames.khitanSmallScript: UnicodeBlockConstant.khitanSmallScript,
    UnicodeBlockNames.tangutSupplement: UnicodeBlockConstant.tangutSupplement,
    UnicodeBlockNames.kanaExtendedb: UnicodeBlockConstant.kanaExtendedb,
    UnicodeBlockNames.kanaSupplement: UnicodeBlockConstant.kanaSupplement,
    UnicodeBlockNames.kanaExtendeda: UnicodeBlockConstant.kanaExtendeda,
    UnicodeBlockNames.smallKanaExtension:
        UnicodeBlockConstant.smallKanaExtension,
    UnicodeBlockNames.nushu: UnicodeBlockConstant.nushu,
    UnicodeBlockNames.duployan: UnicodeBlockConstant.duployan,
    UnicodeBlockNames.shorthandFormatControls:
        UnicodeBlockConstant.shorthandFormatControls,
    UnicodeBlockNames.znamennyMusicalNotation:
        UnicodeBlockConstant.znamennyMusicalNotation,
    UnicodeBlockNames.byzantineMusicalSymbols:
        UnicodeBlockConstant.byzantineMusicalSymbols,
    UnicodeBlockNames.musicalSymbols: UnicodeBlockConstant.musicalSymbols,
    UnicodeBlockNames.ancientGreekMusicalNotation:
        UnicodeBlockConstant.ancientGreekMusicalNotation,
    UnicodeBlockNames.kaktovikNumerals: UnicodeBlockConstant.kaktovikNumerals,
    UnicodeBlockNames.mayanNumerals: UnicodeBlockConstant.mayanNumerals,
    UnicodeBlockNames.taiXuanJingSymbols:
        UnicodeBlockConstant.taiXuanJingSymbols,
    UnicodeBlockNames.countingRodNumerals:
        UnicodeBlockConstant.countingRodNumerals,
    UnicodeBlockNames.mathematicalAlphanumericSymbols:
        UnicodeBlockConstant.mathematicalAlphanumericSymbols,
    UnicodeBlockNames.suttonSignwriting: UnicodeBlockConstant.suttonSignwriting,
    UnicodeBlockNames.latinExtendedg: UnicodeBlockConstant.latinExtendedg,
    UnicodeBlockNames.glagoliticSupplement:
        UnicodeBlockConstant.glagoliticSupplement,
    UnicodeBlockNames.cyrillicExtendedd: UnicodeBlockConstant.cyrillicExtendedd,
    UnicodeBlockNames.nyiakengPuachueHmong:
        UnicodeBlockConstant.nyiakengPuachueHmong,
    UnicodeBlockNames.toto: UnicodeBlockConstant.toto,
    UnicodeBlockNames.wancho: UnicodeBlockConstant.wancho,
    UnicodeBlockNames.nagMundari: UnicodeBlockConstant.nagMundari,
    UnicodeBlockNames.ethiopicExtendedb: UnicodeBlockConstant.ethiopicExtendedb,
    UnicodeBlockNames.mendeKikakui: UnicodeBlockConstant.mendeKikakui,
    UnicodeBlockNames.adlam: UnicodeBlockConstant.adlam,
    UnicodeBlockNames.indicSiyaqNumbers: UnicodeBlockConstant.indicSiyaqNumbers,
    UnicodeBlockNames.ottomanSiyaqNumbers:
        UnicodeBlockConstant.ottomanSiyaqNumbers,
    UnicodeBlockNames.arabicMathematicalAlphabeticSymbols:
        UnicodeBlockConstant.arabicMathematicalAlphabeticSymbols,
    UnicodeBlockNames.mahjongTiles: UnicodeBlockConstant.mahjongTiles,
    UnicodeBlockNames.dominoTiles: UnicodeBlockConstant.dominoTiles,
    UnicodeBlockNames.playingCards: UnicodeBlockConstant.playingCards,
    UnicodeBlockNames.enclosedAlphanumericSupplement:
        UnicodeBlockConstant.enclosedAlphanumericSupplement,
    UnicodeBlockNames.enclosedIdeographicSupplement:
        UnicodeBlockConstant.enclosedIdeographicSupplement,
    UnicodeBlockNames.miscellaneousSymbolsAndPictographs:
        UnicodeBlockConstant.miscellaneousSymbolsAndPictographs,
    UnicodeBlockNames.emoticons: UnicodeBlockConstant.emoticons,
    UnicodeBlockNames.ornamentalDingbats:
        UnicodeBlockConstant.ornamentalDingbats,
    UnicodeBlockNames.transportAndMapSymbols:
        UnicodeBlockConstant.transportAndMapSymbols,
    UnicodeBlockNames.alchemicalSymbols: UnicodeBlockConstant.alchemicalSymbols,
    UnicodeBlockNames.geometricShapesExtended:
        UnicodeBlockConstant.geometricShapesExtended,
    UnicodeBlockNames.supplementalArrowsc:
        UnicodeBlockConstant.supplementalArrowsc,
    UnicodeBlockNames.supplementalSymbolsAndPictographs:
        UnicodeBlockConstant.supplementalSymbolsAndPictographs,
    UnicodeBlockNames.chessSymbols: UnicodeBlockConstant.chessSymbols,
    UnicodeBlockNames.symbolsAndPictographsExtendeda:
        UnicodeBlockConstant.symbolsAndPictographsExtendeda,
    UnicodeBlockNames.symbolsForLegacyComputing:
        UnicodeBlockConstant.symbolsForLegacyComputing,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionB:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionB,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionC:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionC,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionD:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionD,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionE:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionE,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionF:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionF,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionI:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionI,
    UnicodeBlockNames.cjkCompatibilityIdeographsSupplement:
        UnicodeBlockConstant.cjkCompatibilityIdeographsSupplement,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionG:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionG,
    UnicodeBlockNames.cjkUnifiedIdeographsExtensionH:
        UnicodeBlockConstant.cjkUnifiedIdeographsExtensionH,
    UnicodeBlockNames.tags: UnicodeBlockConstant.tags,
    UnicodeBlockNames.variationSelectorsSupplement:
        UnicodeBlockConstant.variationSelectorsSupplement,
    UnicodeBlockNames.supplementaryPrivateUseAreaa:
        UnicodeBlockConstant.supplementaryPrivateUseAreaa,
    UnicodeBlockNames.supplementaryPrivateUseAreab:
        UnicodeBlockConstant.supplementaryPrivateUseAreab,
  };
}

class UnicodeBlockNames {
  static const String basicLatin = "Basic Latin",
      latin1Supplement = "Latin-1 Supplement",
      latinExtendeda = "Latin Extended-A",
      latinExtendedb = "Latin Extended-B",
      ipaExtensions = "IPA Extensions",
      spacingModifierLetters = "Spacing Modifier Letters",
      combiningDiacriticalMarks = "Combining Diacritical Marks",
      greekAndCoptic = "Greek and Coptic",
      cyrillic = "Cyrillic",
      cyrillicSupplement = "Cyrillic Supplement",
      armenian = "Armenian",
      hebrew = "Hebrew",
      arabic = "Arabic",
      syriac = "Syriac",
      arabicSupplement = "Arabic Supplement",
      thaana = "Thaana",
      nko = "NKo",
      samaritan = "Samaritan",
      mandaic = "Mandaic",
      syriacSupplement = "Syriac Supplement",
      arabicExtendedb = "Arabic Extended-B",
      arabicExtendeda = "Arabic Extended-A",
      devanagari = "Devanagari",
      bengali = "Bengali",
      gurmukhi = "Gurmukhi",
      gujarati = "Gujarati",
      oriya = "Oriya",
      tamil = "Tamil",
      telugu = "Telugu",
      kannada = "Kannada",
      malayalam = "Malayalam",
      sinhala = "Sinhala",
      thai = "Thai",
      lao = "Lao",
      tibetan = "Tibetan",
      myanmar = "Myanmar",
      georgian = "Georgian",
      hangulJamo = "Hangul Jamo",
      ethiopic = "Ethiopic",
      ethiopicSupplement = "Ethiopic Supplement",
      cherokee = "Cherokee",
      unifiedCanadianAboriginalSyllabics =
          "Unified Canadian Aboriginal Syllabics",
      ogham = "Ogham",
      runic = "Runic",
      tagalog = "Tagalog",
      hanunoo = "Hanunoo",
      buhid = "Buhid",
      tagbanwa = "Tagbanwa",
      khmer = "Khmer",
      mongolian = "Mongolian",
      unifiedCanadianAboriginalSyllabicsExtended =
          "Unified Canadian Aboriginal Syllabics Extended",
      limbu = "Limbu",
      taiLe = "Tai Le",
      newTaiLue = "New Tai Lue",
      khmerSymbols = "Khmer Symbols",
      buginese = "Buginese",
      taiTham = "Tai Tham",
      combiningDiacriticalMarksExtended =
          "Combining Diacritical Marks Extended",
      balinese = "Balinese",
      sundanese = "Sundanese",
      batak = "Batak",
      lepcha = "Lepcha",
      olChiki = "Ol Chiki",
      cyrillicExtendedc = "Cyrillic Extended-C",
      georgianExtended = "Georgian Extended",
      sundaneseSupplement = "Sundanese Supplement",
      vedicExtensions = "Vedic Extensions",
      phoneticExtensions = "Phonetic Extensions",
      phoneticExtensionsSupplement = "Phonetic Extensions Supplement",
      combiningDiacriticalMarksSupplement =
          "Combining Diacritical Marks Supplement",
      latinExtendedAdditional = "Latin Extended Additional",
      greekExtended = "Greek Extended",
      generalPunctuation = "General Punctuation",
      superscriptsAndSubscripts = "Superscripts and Subscripts",
      currencySymbols = "Currency Symbols",
      combiningDiacriticalMarksForSymbols =
          "Combining Diacritical Marks for Symbols",
      letterlikeSymbols = "Letterlike Symbols",
      numberForms = "Number Forms",
      arrows = "Arrows",
      mathematicalOperators = "Mathematical Operators",
      miscellaneousTechnical = "Miscellaneous Technical",
      controlPictures = "Control Pictures",
      opticalCharacterRecognition = "Optical Character Recognition",
      enclosedAlphanumerics = "Enclosed Alphanumerics",
      boxDrawing = "Box Drawing",
      blockElements = "Block Elements",
      geometricShapes = "Geometric Shapes",
      miscellaneousSymbols = "Miscellaneous Symbols",
      dingbats = "Dingbats",
      miscellaneousMathematicalSymbolsa =
          "Miscellaneous Mathematical Symbols-A",
      supplementalArrowsa = "Supplemental Arrows-A",
      braillePatterns = "Braille Patterns",
      supplementalArrowsb = "Supplemental Arrows-B",
      miscellaneousMathematicalSymbolsb =
          "Miscellaneous Mathematical Symbols-B",
      supplementalMathematicalOperators = "Supplemental Mathematical Operators",
      miscellaneousSymbolsAndArrows = "Miscellaneous Symbols and Arrows",
      glagolitic = "Glagolitic",
      latinExtendedc = "Latin Extended-C",
      coptic = "Coptic",
      georgianSupplement = "Georgian Supplement",
      tifinagh = "Tifinagh",
      ethiopicExtended = "Ethiopic Extended",
      cyrillicExtendeda = "Cyrillic Extended-A",
      supplementalPunctuation = "Supplemental Punctuation",
      cjkRadicalsSupplement = "CJK Radicals Supplement",
      kangxiRadicals = "Kangxi Radicals",
      ideographicDescriptionCharacters = "Ideographic Description Characters",
      cjkSymbolsAndPunctuation = "CJK Symbols and Punctuation",
      hiragana = "Hiragana",
      katakana = "Katakana",
      bopomofo = "Bopomofo",
      hangulCompatibilityJamo = "Hangul Compatibility Jamo",
      kanbun = "Kanbun",
      bopomofoExtended = "Bopomofo Extended",
      cjkStrokes = "CJK Strokes",
      katakanaPhoneticExtensions = "Katakana Phonetic Extensions",
      enclosedCjkLettersAndMonths = "Enclosed CJK Letters and Months",
      cjkCompatibility = "CJK Compatibility",
      cjkUnifiedIdeographsExtensionA = "CJK Unified Ideographs Extension A",
      yijingHexagramSymbols = "Yijing Hexagram Symbols",
      cjkUnifiedIdeographs = "CJK Unified Ideographs",
      yiSyllables = "Yi Syllables",
      yiRadicals = "Yi Radicals",
      lisu = "Lisu",
      vai = "Vai",
      cyrillicExtendedb = "Cyrillic Extended-B",
      bamum = "Bamum",
      modifierToneLetters = "Modifier Tone Letters",
      latinExtendedd = "Latin Extended-D",
      sylotiNagri = "Syloti Nagri",
      commonIndicNumberForms = "Common Indic Number Forms",
      phagspa = "Phags-pa",
      saurashtra = "Saurashtra",
      devanagariExtended = "Devanagari Extended",
      kayahLi = "Kayah Li",
      rejang = "Rejang",
      hangulJamoExtendeda = "Hangul Jamo Extended-A",
      javanese = "Javanese",
      myanmarExtendedb = "Myanmar Extended-B",
      cham = "Cham",
      myanmarExtendeda = "Myanmar Extended-A",
      taiViet = "Tai Viet",
      meeteiMayekExtensions = "Meetei Mayek Extensions",
      ethiopicExtendeda = "Ethiopic Extended-A",
      latinExtendede = "Latin Extended-E",
      cherokeeSupplement = "Cherokee Supplement",
      meeteiMayek = "Meetei Mayek",
      hangulSyllables = "Hangul Syllables",
      hangulJamoExtendedb = "Hangul Jamo Extended-B",
      highSurrogates = "High Surrogates",
      highPrivateUseSurrogates = "High Private Use Surrogates",
      lowSurrogates = "Low Surrogates",
      privateUseArea = "Private Use Area",
      cjkCompatibilityIdeographs = "CJK Compatibility Ideographs",
      alphabeticPresentationForms = "Alphabetic Presentation Forms",
      arabicPresentationFormsa = "Arabic Presentation Forms-A",
      variationSelectors = "Variation Selectors",
      verticalForms = "Vertical Forms",
      combiningHalfMarks = "Combining Half Marks",
      cjkCompatibilityForms = "CJK Compatibility Forms",
      smallFormVariants = "Small Form Variants",
      arabicPresentationFormsb = "Arabic Presentation Forms-B",
      halfwidthAndFullwidthForms = "Halfwidth and Fullwidth Forms",
      specials = "Specials",
      linearBSyllabary = "Linear B Syllabary",
      linearBIdeograms = "Linear B Ideograms",
      aegeanNumbers = "Aegean Numbers",
      ancientGreekNumbers = "Ancient Greek Numbers",
      ancientSymbols = "Ancient Symbols",
      phaistosDisc = "Phaistos Disc",
      lycian = "Lycian",
      carian = "Carian",
      copticEpactNumbers = "Coptic Epact Numbers",
      oldItalic = "Old Italic",
      gothic = "Gothic",
      oldPermic = "Old Permic",
      ugaritic = "Ugaritic",
      oldPersian = "Old Persian",
      deseret = "Deseret",
      shavian = "Shavian",
      osmanya = "Osmanya",
      osage = "Osage",
      elbasan = "Elbasan",
      caucasianAlbanian = "Caucasian Albanian",
      vithkuqi = "Vithkuqi",
      linearA = "Linear A",
      latinExtendedf = "Latin Extended-F",
      cypriotSyllabary = "Cypriot Syllabary",
      imperialAramaic = "Imperial Aramaic",
      palmyrene = "Palmyrene",
      nabataean = "Nabataean",
      hatran = "Hatran",
      phoenician = "Phoenician",
      lydian = "Lydian",
      meroiticHieroglyphs = "Meroitic Hieroglyphs",
      meroiticCursive = "Meroitic Cursive",
      kharoshthi = "Kharoshthi",
      oldSouthArabian = "Old South Arabian",
      oldNorthArabian = "Old North Arabian",
      manichaean = "Manichaean",
      avestan = "Avestan",
      inscriptionalParthian = "Inscriptional Parthian",
      inscriptionalPahlavi = "Inscriptional Pahlavi",
      psalterPahlavi = "Psalter Pahlavi",
      oldTurkic = "Old Turkic",
      oldHungarian = "Old Hungarian",
      hanifiRohingya = "Hanifi Rohingya",
      rumiNumeralSymbols = "Rumi Numeral Symbols",
      yezidi = "Yezidi",
      arabicExtendedc = "Arabic Extended-C",
      oldSogdian = "Old Sogdian",
      sogdian = "Sogdian",
      oldUyghur = "Old Uyghur",
      chorasmian = "Chorasmian",
      elymaic = "Elymaic",
      brahmi = "Brahmi",
      kaithi = "Kaithi",
      soraSompeng = "Sora Sompeng",
      chakma = "Chakma",
      mahajani = "Mahajani",
      sharada = "Sharada",
      sinhalaArchaicNumbers = "Sinhala Archaic Numbers",
      khojki = "Khojki",
      multani = "Multani",
      khudawadi = "Khudawadi",
      grantha = "Grantha",
      newa = "Newa",
      tirhuta = "Tirhuta",
      siddham = "Siddham",
      modi = "Modi",
      mongolianSupplement = "Mongolian Supplement",
      takri = "Takri",
      ahom = "Ahom",
      dogra = "Dogra",
      warangCiti = "Warang Citi",
      divesAkuru = "Dives Akuru",
      nandinagari = "Nandinagari",
      zanabazarSquare = "Zanabazar Square",
      soyombo = "Soyombo",
      unifiedCanadianAboriginalSyllabicsExtendeda =
          "Unified Canadian Aboriginal Syllabics Extended-A",
      pauCinHau = "Pau Cin Hau",
      devanagariExtendeda = "Devanagari Extended-A",
      bhaiksuki = "Bhaiksuki",
      marchen = "Marchen",
      masaramGondi = "Masaram Gondi",
      gunjalaGondi = "Gunjala Gondi",
      makasar = "Makasar",
      kawi = "Kawi",
      lisuSupplement = "Lisu Supplement",
      tamilSupplement = "Tamil Supplement",
      cuneiform = "Cuneiform",
      cuneiformNumbersAndPunctuation = "Cuneiform Numbers and Punctuation",
      earlyDynasticCuneiform = "Early Dynastic Cuneiform",
      cyprominoan = "Cypro-Minoan",
      egyptianHieroglyphs = "Egyptian Hieroglyphs",
      egyptianHieroglyphFormatControls = "Egyptian Hieroglyph Format Controls",
      anatolianHieroglyphs = "Anatolian Hieroglyphs",
      bamumSupplement = "Bamum Supplement",
      mro = "Mro",
      tangsa = "Tangsa",
      bassaVah = "Bassa Vah",
      pahawhHmong = "Pahawh Hmong",
      medefaidrin = "Medefaidrin",
      miao = "Miao",
      ideographicSymbolsAndPunctuation = "Ideographic Symbols and Punctuation",
      tangut = "Tangut",
      tangutComponents = "Tangut Components",
      khitanSmallScript = "Khitan Small Script",
      tangutSupplement = "Tangut Supplement",
      kanaExtendedb = "Kana Extended-B",
      kanaSupplement = "Kana Supplement",
      kanaExtendeda = "Kana Extended-A",
      smallKanaExtension = "Small Kana Extension",
      nushu = "Nushu",
      duployan = "Duployan",
      shorthandFormatControls = "Shorthand Format Controls",
      znamennyMusicalNotation = "Znamenny Musical Notation",
      byzantineMusicalSymbols = "Byzantine Musical Symbols",
      musicalSymbols = "Musical Symbols",
      ancientGreekMusicalNotation = "Ancient Greek Musical Notation",
      kaktovikNumerals = "Kaktovik Numerals",
      mayanNumerals = "Mayan Numerals",
      taiXuanJingSymbols = "Tai Xuan Jing Symbols",
      countingRodNumerals = "Counting Rod Numerals",
      mathematicalAlphanumericSymbols = "Mathematical Alphanumeric Symbols",
      suttonSignwriting = "Sutton SignWriting",
      latinExtendedg = "Latin Extended-G",
      glagoliticSupplement = "Glagolitic Supplement",
      cyrillicExtendedd = "Cyrillic Extended-D",
      nyiakengPuachueHmong = "Nyiakeng Puachue Hmong",
      toto = "Toto",
      wancho = "Wancho",
      nagMundari = "Nag Mundari",
      ethiopicExtendedb = "Ethiopic Extended-B",
      mendeKikakui = "Mende Kikakui",
      adlam = "Adlam",
      indicSiyaqNumbers = "Indic Siyaq Numbers",
      ottomanSiyaqNumbers = "Ottoman Siyaq Numbers",
      arabicMathematicalAlphabeticSymbols =
          "Arabic Mathematical Alphabetic Symbols",
      mahjongTiles = "Mahjong Tiles",
      dominoTiles = "Domino Tiles",
      playingCards = "Playing Cards",
      enclosedAlphanumericSupplement = "Enclosed Alphanumeric Supplement",
      enclosedIdeographicSupplement = "Enclosed Ideographic Supplement",
      miscellaneousSymbolsAndPictographs =
          "Miscellaneous Symbols and Pictographs",
      emoticons = "Emoticons",
      ornamentalDingbats = "Ornamental Dingbats",
      transportAndMapSymbols = "Transport and Map Symbols",
      alchemicalSymbols = "Alchemical Symbols",
      geometricShapesExtended = "Geometric Shapes Extended",
      supplementalArrowsc = "Supplemental Arrows-C",
      supplementalSymbolsAndPictographs =
          "Supplemental Symbols and Pictographs",
      chessSymbols = "Chess Symbols",
      symbolsAndPictographsExtendeda = "Symbols and Pictographs Extended-A",
      symbolsForLegacyComputing = "Symbols for Legacy Computing",
      cjkUnifiedIdeographsExtensionB = "CJK Unified Ideographs Extension B",
      cjkUnifiedIdeographsExtensionC = "CJK Unified Ideographs Extension C",
      cjkUnifiedIdeographsExtensionD = "CJK Unified Ideographs Extension D",
      cjkUnifiedIdeographsExtensionE = "CJK Unified Ideographs Extension E",
      cjkUnifiedIdeographsExtensionF = "CJK Unified Ideographs Extension F",
      cjkUnifiedIdeographsExtensionI = "CJK Unified Ideographs Extension I",
      cjkCompatibilityIdeographsSupplement =
          "CJK Compatibility Ideographs Supplement",
      cjkUnifiedIdeographsExtensionG = "CJK Unified Ideographs Extension G",
      cjkUnifiedIdeographsExtensionH = "CJK Unified Ideographs Extension H",
      tags = "Tags",
      variationSelectorsSupplement = "Variation Selectors Supplement",
      supplementaryPrivateUseAreaa = "Supplementary Private Use Area-A",
      supplementaryPrivateUseAreab = "Supplementary Private Use Area-B";
}
