import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catelogmodel.dart';

class CatelogApp extends StatefulWidget {
  const CatelogApp({super.key});

  @override
  State<CatelogApp> createState() => _CatelogAppState();
}

class _CatelogAppState extends State<CatelogApp> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var data = await rootBundle.loadString("assets/files/catelog.json");
    var decodedData = jsonDecode(data);
    var productData = decodedData["products"];
    Catelogmodel.items =
        List.from(productData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Catelog App",
              style: TextStyle(
                fontSize: 46,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text("Trending Products",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey)),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: (Catelogmodel.items != null)
                      ? ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: Catelogmodel.items.length,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Card(
                                      child: Image.network(
                                          Catelogmodel.items[index].image))
                                ],
                              ),
                            );
                          }))
                      : const Center(child: CircularProgressIndicator())),
            )
          ],
        ),
      ),
    );
  }
}
