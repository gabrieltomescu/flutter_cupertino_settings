library flutter_cupertino_settings;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'widgets/button.dart';
part 'widgets/control.dart';
part 'widgets/header.dart';
part 'widgets/link.dart';
part 'widgets/selection.dart';
part 'widgets/widget.dart';

const double CS_ITEM_HEIGHT = 50.0;
const Color CS_HEADER_COLOR = Color.fromARGB(255, 247, 247, 247);
const Color CS_BORDER_COLOR = Colors.black12;
const Color CS_TEXT_COLOR = Color.fromARGB(255, 102, 114, 228); //Purple
const Color CS_HEADER_TEXT_COLOR = Colors.black54;
const EdgeInsets CS_ITEM_PADDING = EdgeInsets.symmetric(horizontal: 16.0);
const double CS_HEADER_FONT_SIZE = 14.0;
const double CS_ITEM_NAME_SIZE = 18.0;
const EdgeInsets CS_ICON_PADDING = EdgeInsets.only(right: 10.0);
const CSWidgetStyle CS_DEFAULT_STYLE = CSWidgetStyle();
const Color CS_CHECK_COLOR = Color.fromARGB(255, 102, 114, 228);
const double CS_CHECK_SIZE = 24.0;

/// Event for [CSSelection]
typedef void SelectionCallback(int selected);

class CupertinoSettings extends StatelessWidget {
  final List<Widget> items;
  final bool shrinkWrap;

  CupertinoSettings({
    @required this.items,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!shrinkWrap) {
      return Container(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: shrinkWrap,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return items[index];
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.black12
          : CupertinoColors.lightBackgroundGray,
      child: SafeArea(
        bottom: false,
        child: ListView.builder(
          shrinkWrap: shrinkWrap,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
        ),
      ),
    );
  }
}
