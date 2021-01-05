// Start Option class
import 'package:flutter/material.dart';
import 'package:swap_app/styles/colors.dart';

int index = 1;

class Option extends StatefulWidget {
  final title;
  final option1;
  final option2;
  final option3;

  Option({Key key, this.title, this.option1, this.option2, this.option3});

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  void refresh() {
    setState(() {
      index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              OptionCard(

                  text: widget.option1, currentIndex: 1, refresh: refresh),
              OptionCard(
                  text: widget.option2, currentIndex: 2, refresh: refresh),
              OptionCard(
                  text: widget.option3, currentIndex: 3, refresh: refresh)
            ],
          )
        ],
      ),
    );
  }
}

class OptionCard extends StatefulWidget {
  final String text;
  final int currentIndex;
  final Function refresh;
  OptionCard({this.text, this.currentIndex, this.refresh});

  @override
  _OptionCardState createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, top: 30),
      child: Ink(
          height: 50,
          width: 100,
          child: InkWell(
              splashColor: Color(0xFFFF795C),
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                index = widget.currentIndex;
                widget.refresh();
              },
              child: Center(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        color: index == widget.currentIndex
                            ? Colors.white
                            : Color(0xFFFF795C),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ))),
          decoration: index == widget.currentIndex
              ? decoration.copyWith(gradient: gradient)
              : decoration.copyWith(color: Colors.white)),
    );
  }
}

// End Option class
