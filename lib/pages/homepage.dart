import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var list = ["breakfastapp"];
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("All Apps",
                textScaleFactor: 1.5,
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
              itemCount: list.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () async {
                    setState(() {
                      loading = true;
                    });
                    await Future.delayed(const Duration(seconds: 10));
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, "/breakfastapp");
                    setState(() {
                      loading = false;
                    });
                  },
                  child: loading
                      ? const Center(child: CircularProgressIndicator())
                      : Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          child: Center(
                              child: Text("${index + 1}.  ${list[index]}",
                                  textScaleFactor: 1.5,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                        ),
                );
              },
            ),
          )
        ]));
  }
}
