import 'package:flutter/material.dart';

import '../models/catelogmodel.dart';

class ItemWidgit extends StatelessWidget {
  final Item item;

  const ItemWidgit({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset.zero,
                blurRadius: 0.5,
              )
            ]),
        child: Row(children: [
          SizedBox(
            width: 120,
            child: Image.network(
              item.image,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      item.desc,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0, right: 2),
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${item.price}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset.zero,
                                    blurRadius: 1,
                                  )
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(" Buy ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
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
