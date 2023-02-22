// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';

import '../../product/domain/entities/product_entity.dart';
import 'widget/tile_search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String search = '';
  List<String> recentSearches = [
    'pais',
    'Buscando',
    'infiny',
    'poke',
    'bolsos'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade600,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: TextFormField(
          onChanged: (value) {
            search = value;
            setState(() {});
          },
          decoration: const InputDecoration(
            hintText: 'Buscar en Proyect infiny',
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              for (String recentSearch in recentSearches)
                TileSearchWidget(
                  text: recentSearch,
                ),
            ],
          )
        ],
      ),
    );
  }
}
