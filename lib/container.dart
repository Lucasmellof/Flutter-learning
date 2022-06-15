import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<List<String>> getImages() async {
    var tempJson = await rootBundle.loadString("AssetManifest.json");
    final Map<String, dynamic> map = json.decode(tempJson);
    final paths = map.keys
        .where((String element) => element.contains("images/"))
        .where((String element) => element.contains(".jpg"))
        .toList();

    return paths;
  }

  Widget getImageGrid() {
    return FutureBuilder<List<String>>(
        future: getImages(),
        initialData: const ["assets/avatar.png"],
        builder: (BuildContext ctx, AsyncSnapshot<List<String>> snap) {
          List<String> dt = snap.data!;
          return buildSmallGrid(dt);
        });
  }

  Widget buildGiantGrid(List<String> list) =>
      GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: buildGridTile(list));

  List<Material> buildGridTile(List<String> list) =>
      List.generate(
          list.length, (i) =>
          Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                list.elementAt(i),
                fit: BoxFit.cover,
              ))
      );

  Widget buildSmallGrid(List<String> list) =>
      GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: buildGridTile(list),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hellow"),
        ),
        body: Scrollbar(
          child: getImageGrid(),
        ),
      ),
    );
  }
}
