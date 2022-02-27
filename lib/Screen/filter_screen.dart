import 'package:flutter/material.dart';
import 'package:multi_screen/Widget/drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filterscreen';

  final Function saveFilters;
  FilterScreen(this.saveFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool gluten = false;
  bool veget = false;
  bool vegan = false;
  bool lactose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        actions: [
          IconButton(
              onPressed: () {
                final selectedFilter = {
                  'gluten': gluten,
                  'lactose': lactose,
                  'vegan': vegan,
                  'vegetarian': veget,
                };
                widget.saveFilters(selectedFilter);
              },
              icon: const Icon(Icons.save))
        ],
      ),
      drawer: mainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: const Text(
              'Adjust your meal selection',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  subtitle: const Text('Only include gluten-free meals'),
                  value: gluten,
                  onChanged: (val) {
                    setState(() {
                      gluten = val;
                    });
                  },
                  title: const Text('Gluten-free'),
                ),
                SwitchListTile(
                  subtitle: const Text('Only include lactose-free meals'),
                  value: lactose,
                  onChanged: (val) {
                    setState(() {
                      lactose = val;
                    });
                  },
                  title: const Text('Lactose-free'),
                ),
                SwitchListTile(
                  subtitle: const Text('Only include vegetarian-free meals'),
                  value: veget,
                  onChanged: (val) {
                    setState(() {
                      veget = val;
                    });
                  },
                  title: const Text('Vegetarian-free'),
                ),
                SwitchListTile(
                  subtitle: const Text('Only include vegan-free meals'),
                  value: vegan,
                  onChanged: (val) {
                    setState(() {
                      vegan = val;
                    });
                  },
                  title: const Text('Vegan-free'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
