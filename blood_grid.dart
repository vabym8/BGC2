import 'package:bloodgroup_compatibility/blood_data.dart';
import 'package:bloodgroup_compatibility/blood_tile.dart';
import 'package:flutter/material.dart';

class BloodGrid extends StatelessWidget {
  BloodGrid(this.available);
  final List<bool> available;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      children: <Widget>[
        BloodTile(BloodData.bloodGroup[0], available[0]),
        BloodTile(BloodData.bloodGroup[1], available[1]),
        BloodTile(BloodData.bloodGroup[2], available[2]),
        BloodTile(BloodData.bloodGroup[3], available[3]),
        BloodTile(' ', true),
        BloodTile(BloodData.bloodGroup[4], available[4]),
        BloodTile(BloodData.bloodGroup[5], available[5]),
        BloodTile(BloodData.bloodGroup[6], available[6]),
        BloodTile(BloodData.bloodGroup[7], available[7]),
      ],
      crossAxisCount: 3,
      crossAxisSpacing: 20.0,
      primary: false,
      padding: const EdgeInsets.all(20.0),
      mainAxisSpacing: 1.0,
    );
  }
}
