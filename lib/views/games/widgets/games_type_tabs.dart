import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GamesTypeTabs extends StatelessWidget {
  final String active;
  final List<String> tabs;
  final Function(String) onTap;
  const GamesTypeTabs({
    super.key,
    required this.active,
    required this.tabs,
    required this.onTap,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          tabs
              .map(
                (e) => FilledButton(
                  onPressed: () => onTap(e),
                  child: Text(e),
                  style: FilledButton.styleFrom(
                    backgroundColor: active == e ? Colors.blue : Colors.grey,
                  ),
                ),
              )
              .toList(),
    );
  }
}
