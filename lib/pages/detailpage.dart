import 'package:flutter/material.dart';
import 'package:my_app/models/catelogmodel.dart';

class Detail extends StatelessWidget {
  final Item item;
  const Detail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          item.name,
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.network(
                item.image,
                height: 400,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 5, 20, 35),
              borderRadius: BorderRadius.circular(22)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${item.price}",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 63, 114),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                      child: Text("BUY",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
