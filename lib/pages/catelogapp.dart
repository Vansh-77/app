import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catelogmodel.dart';
import 'package:my_app/pages/detailpage.dart';
import 'package:my_app/widgits/itemwidgit.dart';

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
    // await Future.delayed(Duration(seconds: 5));
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 25, 45),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Catelog App",
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10, bottom: 10),
            child: Text("Trending Products",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey)),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Catelogmodel.items.isNotEmpty
                    ? ListView.builder(
                        itemCount: Catelogmodel.items.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail(
                                          item: Catelogmodel.items[index])));
                            },
                            child: ItemWidgit(
                              item: Catelogmodel.items[index],
                            ),
                          );
                        }))
                    : const Center(child: CircularProgressIndicator())),
          )
        ],
      ),
    );
  }
}
