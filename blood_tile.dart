import 'package:flutter/material.dart';

class BloodTile extends StatelessWidget {
  BloodTile(this.bloodGroup, this.enabled);
  final bloodGroup;
  final enabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FloatingActionButton(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {},
        child: bloodGroup.contains(' ')
            ? Icon(
          Icons.all_out,
          color: Color(0xFF820111),
          size: 50.0,
        )
            : Text(
          bloodGroup,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25.0,
            color: enabled ? Theme.of(context).primaryColor : Color(0xFFFFFFFF),
          ),
        ),
        backgroundColor: enabled ? Color(0xFFFFFFFF) : Color(0xFF999999),
      ),
    );
  }
}
