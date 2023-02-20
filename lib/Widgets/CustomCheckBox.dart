import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key, required this.IsChecked, required this.Size, required this.IconSize, required this.SelectedColor}) : super(key: key);
  final bool IsChecked;
  final double Size;
  final double IconSize;
  final Color SelectedColor;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {

  bool _IsSelected = false;

  @override
  Widget build(BuildContext context) {
    _IsSelected = widget.IsChecked ?? false;
    return GestureDetector(
      onTap: () {
        setState(() {
          _IsSelected = ! _IsSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: _IsSelected ? null :Border.all(),
          gradient: LinearGradient(
              colors: [
                _IsSelected ? widget.SelectedColor ?? Color(0xFF53E88B): Color(0xFF53E88B),
              ]),
        ),
        width: widget.Size ?? 30,
        height: widget.Size ?? 30,
        child: _IsSelected ? Icon(
        Icons.check,
          color: Colors.white,
          size: widget.IconSize ?? 20,
        ) : null,
      ),
    );
  }
}
