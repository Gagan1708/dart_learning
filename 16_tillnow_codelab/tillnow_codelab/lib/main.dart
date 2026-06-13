import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: DocumentScreen(document: Document()),
    );
  }
}

String formatDate(DateTime dateTime) {
  final today = DateTime.now();
  final difference = dateTime.difference(
      today); // This will provide the difference between today and the dateTime provided and the type would be Duration()

  return switch (difference) {
    Duration(inDays: 0) => 'today',
    Duration(inDays: 1) => 'tomorrow',
    Duration(inDays: -1) => 'yesterday',
    Duration(inDays: final days) when days >= 365 =>
      '${(days / 365).toStringAsFixed(1)} years from now',
    Duration(inDays: final days) when days <= -365 =>
      '${(days.abs() / 365).toStringAsFixed(1)} years ago',
    Duration(inDays: final days) when days >= 30 =>
      '${days ~/ 30} months from now',
    Duration(inDays: final days) when days <= -30 =>
      '${days.abs() ~/ 30} months ago',
    Duration(inDays: final days) when days >= 7 =>
      '${days ~/ 7} weeks from now',
    Duration(inDays: final days) when days <= -7 =>
      '${days.abs() ~/ 7} weeks ago',
    Duration(inDays: final days, isNegative: true) => '${days.abs()} days ago',
    Duration(inDays: final days) => '$days days from now'
  };
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({required this.document, super.key});

  @override
  Widget build(BuildContext context) {
    // Assigning the metadata getter method to a variable to use the returned values.
    /* final metadataRecord = document.metadata;

    return Scaffold(
      appBar: AppBar(title: Text(metadataRecord.$1)),
      body: Column(children: [Center(child: Text('Last Modified: ${metadataRecord.modified}'))]),
    ); */

    // Now lets use the patterns to make improve the code
    // final (title, modified: modified) = document
    //     .metadata; // Here the dart pattern matching will take care of destructuring the data and binding it with the variables title and modified

    // To make it more shorthand we can use it like below
    final (title, :modified) =
        document.metadata; // Here :modified is same as modified: modified

    // Lets now get the blocks list
    final blocks = document.getBlocks();

    // Adding the formatted date
    final formattedModifiedDate = formatDate(modified);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text('Last Modified: $formattedModifiedDate'),
          Expanded(
              child: ListView.builder(
            itemCount: blocks.length,
            itemBuilder: (context, index) {
              return BlockWidget(
                block: blocks[index],
              );
            },
          )),
        ],
      ),
    );
  }
}

// Lets create a new widget for handling Block related data
class BlockWidget extends StatefulWidget {
  final Block block;
  const BlockWidget({required this.block, super.key});

  @override
  State<BlockWidget> createState() => _BlockWidgetState();
}

class _BlockWidgetState extends State<BlockWidget> {
  bool localIsChecked = true;
  @override
  Widget build(BuildContext context) {
    // TextStyle? textStyle;

    // ------ This is using a normal switch case
    // switch (block.type) {
    //   case 'h1':
    //     textStyle = Theme.of(context).textTheme.displayMedium;
    //   case 'p' || 'checkbox':
    //     textStyle = Theme.of(context).textTheme.bodyMedium;
    //   case _:
    //     textStyle = Theme.of(context).textTheme.bodySmall;
    // }

    // ------ We can directly use the switch expresssion (pattern matching) in dart to simplify the above
    // textStyle = switch (block.type) {
    //   'h1' => Theme.of(context).textTheme.displayMedium,
    //   'p' || 'checkbox' => Theme.of(context).textTheme.bodyMedium,
    //   _ => Theme.of(context).textTheme.bodySmall
    // };

    // return Container(
    //   margin: EdgeInsets.all(8),
    //   child: Text(
    //     block.text,
    //     style: textStyle,
    //   ),
    // );

    // ------- Now we update the code according to the created sealed class and its subclass
    return Container(
      margin: EdgeInsets.all(8),
      child: switch (widget.block) {
        HeaderBlock(:final text) => Text(
            text,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ParagraphBlock(:final text) => Text(text),
        CheckboxBlock(:final text, :bool isChecked) => Row(
            children: [
              Checkbox(
                  value: localIsChecked,
                  onChanged: (_) {
                    setState(() {
                      localIsChecked = !localIsChecked;
                    });
                  }),
              Text(text)
            ],
          ),
      },
    );
  }
}
