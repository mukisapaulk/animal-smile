import 'package:animal_smile/components/profile_card.dart';
import 'package:animal_smile/components/tile_container.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List profiles = [
    ["lib/images/profile1.jpg", "Dr.Milly"],
    ["lib/images/profile2.jpg", "Dr.Emma"],
    ["lib/images/profile3.jpg", "Dr.phil"],
    ["lib/images/profile4.jpg", "Dr.Micheal"],
  ];
  List activities = [
    ["insemination tips"],
    ["animal diseases"],
    ["top breeds"],
    ["foot rot"],
  ];

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // search a bar
            SearchBar(
              leading: Icon(Icons.search),
              controller: searchController,
              hintText: "Who are you looking for",
              elevation: const WidgetStatePropertyAll(0),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, bottom: 12),
              child: Row(children: [Text("Recommended")]),
            ),
            // recommended service provider
            SizedBox(
              height: 84, // Set the specific height your ProfileCard requires
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: profiles.length,
                itemBuilder: (context, index) => ProfileCard(
                  imageURL: profiles[index][0],
                  name: profiles[index][1],
                ),
              ),
            ),

            // recommendation tile
            SizedBox(
              height: 120,
              // width: 50,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: activities.length,
                itemBuilder: (context, index) =>
                    TileContainer(tilename: activities[index][0]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
