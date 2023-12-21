import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search Atay",
                hintStyle: const TextStyle(
                  color: Color(0xffDDDADA),
                  fontSize: 14
                ),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: Container(
                  width: 100,
                  child: const IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.1,
                        ),
                        Icon(Icons.tune),
                      ],
                    ),
                  ),
                ),
                contentPadding: const EdgeInsets.all(16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Break fast',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 92, 168, 168),
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Icon(
          Icons.chevron_left,
          size: 23,
        ),
      ),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        width: 38,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 92, 168, 168),
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Icon(
          Icons.more_horiz,
          size: 23,
        ),
      )
    ],
    );
  }
}