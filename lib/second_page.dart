import 'package:english_words_using_provider/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class secnd extends StatelessWidget {
  const secnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<MyProvider>(context);
    final list = prov.myList;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Favorite",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  "${list[index]}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              );
            }));
  }
}
