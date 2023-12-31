import 'package:flutter/material.dart';

class Item {
  Item({
    required this.expandedText,
    required this.headerText,
    this.isExpanded = false,
  });

  String expandedText;
  String headerText;
  bool isExpanded;
}

class CustomExPanel extends StatefulWidget {
  const CustomExPanel({super.key});

  @override
  State<CustomExPanel> createState() => _CustomExPanelState();
}

class _CustomExPanelState extends State<CustomExPanel> {
  final List<Item> _data = List<Item>.generate(
    11,
    (String categoryName) {
      return Item(
        headerText: categoryName,
        expandedText: categoryName,
        isExpanded: false,
      );
    } as Item Function(int index),
  );
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerText),
              );
            },
            body: ListTile(
              title: Text(item.expandedText),
              subtitle: const Text('To delete this item, click trash icon'),
              trailing: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              },
            ));
      }).toList(),
    );
  }
}
