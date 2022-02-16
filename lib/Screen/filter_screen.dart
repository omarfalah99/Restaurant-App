import 'package:flutter/material.dart';
import 'package:multi_screen/Widget/drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const routeName = '/filterscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: mainDrawer(),
      body: Center(
        child: Text('Filter Screen'),
      ),
    );
  }
}
