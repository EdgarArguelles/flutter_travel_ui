import 'package:flutter/material.dart';

class ActivityIcon extends StatelessWidget {
  final IconData _icon;
  final bool _isSelected;
  final Function _changeSelectedIcon;

  ActivityIcon(this._icon, this._isSelected, this._changeSelectedIcon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeSelectedIcon,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color:
              _isSelected ? Theme.of(context).accentColor : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icon,
          size: 25.0,
          color:
              _isSelected ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}
