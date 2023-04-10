import 'package:flutter/material.dart';
import '../models/catelogmodel.dart';

class ItemWidgit extends StatelessWidget {
  final Item item;

  const ItemWidgit({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0, left: 10, right: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset.zero,
                blurRadius: 0.5,
              )
            ]),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: 120,
              child: Image.network(
                item.image,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 10, right: 2),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      item.desc,
                      style:
                          const TextStyle(color: Colors.blueGrey, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${item.price}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                              width: 60,
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 19, 52),
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset.zero,
                                    blurRadius: 1,
                                  )
                                ],
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(" Buy ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ),
                              ))
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
