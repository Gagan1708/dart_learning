import 'dart:convert';

class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  // ---- This is using records and a getter method to return some values
  // (String, {DateTime modified}) get metadata {
  //   const title = 'My Document';
  //   final now = DateTime.now();

  //   return (title, modified: now);
  // }

  // -------------------------------------------------------------
  // Now instead of static, we will use the documentJson
  // (String, {DateTime modified}) get metadata {
  //   if (_json.containsKey('metadata')) {
  //     final metadataJson = _json['metadata'];

  //     if (metadataJson is Map) {
  //       final title = metadataJson['title'] as String;
  //       final localModified =
  //           DateTime.parse(metadataJson['modified'] as String);
  //       return (title, modified: localModified);
  //     }
  //   }
  //   throw const FormatException('Unexpected JSON');
  // }

  // -------------------------------------------------------------
  // Now we use pattern matching feature in dart to make the code less verbose
  (String, {DateTime modified}) get metadata {
    if (_json
        case {
          'metadata': {
            'title': String title,
            'modified': String localModified
          }, // Here this is a "Refutable Pattern", which means it only checks the pattern that is provided, and if matches it will return with value assignment
        }) // Here this is an if-case statement, here block inside if executes only if the case pattern matches the data in _json
    {
      return (title, modified: DateTime.parse(localModified));
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  // ------------------------------------------------------------
  // Lets add a Block calling function getBlocks
  List<Block> getBlocks() {
    if (_json case {'blocks': List blockJsons}) {
      return [for (final blockJson in blockJsons) Block.fromJson(blockJson)];
    } else {
      throw const FormatException('Unexpected Json');
    }
  }
}

// ----------------------------------------
// Creating a Block class to work with the blocks related data in the documentJson
// class Block {
//   final String type;
//   final String text;
//   Block(this.type, this.text);

//   // Here we will use a factory constructor, which will be used to decide with which values the Block object should be created.
//   factory Block.fromJson(Map<String, dynamic> json) {
//     if (json case {'type': final type, 'text': final text}) {
//       return Block(type, text);
//     } else {
//       throw const FormatException('Unexpected JSON');
//     }
//   }
// }

// ----------------------------------------
// Lets create a sealed class Block
// sealed class can be extended or implemented in the same library
// A sealed class is a class with a closed set of known subclasses, allowing Dart to safely perform exhaustive pattern matching and helping you model fixed states and behaviors in a type-safe way.
sealed class Block {
  Block();

  factory Block.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'type': 'h1', 'text': String text} => HeaderBlock(text),
      {'type': 'p', 'text': String text} => ParagraphBlock(text),
      {'type': 'checkbox', 'text': String text, 'checked': bool isChecked} =>
        CheckboxBlock(text, isChecked),
      _ => throw const FormatException('Unexpected JSON')
    };
  }
}

// Lets create different classes for different types by extending Block class
class HeaderBlock extends Block {
  final String text;
  HeaderBlock(this.text);
}

class ParagraphBlock extends Block {
  final String text;
  ParagraphBlock(this.text);
}

class CheckboxBlock extends Block {
  final String text;
  bool isChecked;
  CheckboxBlock(this.text, this.isChecked);
}

const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": true,
      "text": "Learn Dart 3"
    }
  ]
}
''';
