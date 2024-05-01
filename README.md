This package will help u finding the ranges of unicode character from usd database.
https://unicode.org/Public/UCD/latest/ucd/Blocks.txt

## Getting started
To get started run this command to install latest version:
```
flutter pub add unicode_blocks
```

## Usage

- To get the name of the block you can use UnicodeBlockNames class

```dart
print(UnicodeBlockNames.devnagari);
```

- To get the codepoint range of the block you can use UnicodeBlock class

```dart
const block = UnicodeBlockConstant.devnagari;
print(block.start);
print(block.end);
```
- To get the block constant from name you can use UnicodeBlock.fromName method

```dart
var block = UnicodeBlock.fromName("Devanagari");
print(block.start);
print(block.end);
```
