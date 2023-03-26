import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("All Apps",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 20,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  height: 100,
                  child: Center(
                      child: Text((index + 1).toString(),
                          textScaleFactor: 1.5,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ))),
                );
              },
            ),
          )
        ]));
  }
}
