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
        height: 80,
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
        child: ListTile(
          leading: Image.network(
            item.image,
          ),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset.zero,
                    blurRadius: 1,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("\$${item.price}"),
              )),
        ),
      ),
    );
  }
}
