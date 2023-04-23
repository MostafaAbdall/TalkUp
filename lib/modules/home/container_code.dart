import 'package:flutter/material.dart';

class ExpandableContainer extends StatefulWidget {
  final String visibleText;
  final String hiddenText;

  ExpandableContainer({required this.visibleText, required this.hiddenText});

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: _isExpanded ? 200 : 100,
        // Change the height based on whether it's expanded or not
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.grey[400]!,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.visibleText,
                style: TextStyle(fontSize: 18),
              ),
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _isExpanded ? 1 : 0,
              // Change the opacity based on whether it's expanded or not
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.hiddenText,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
