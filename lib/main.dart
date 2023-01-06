import 'package:english_words_using_provider/provider/provider_class.dart';
import 'package:english_words_using_provider/second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => MyProvider()),
    child: MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const English(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class English extends StatelessWidget {
  const English({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> c1 = [
      "Time",
      "Year",
      "People",
      "Way",
      "Day",
      "Man",
      "Thing",
      "Woman",
      "Life",
      "Child",
      "World"
    ];

    final prov = Provider.of<MyProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "English Words",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: c1.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                "${c1[index]}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {
                    prov.favour(c1[index]);
                  },
                  icon: (prov.icn(c1[index]))
                      ? Icon(
                          Icons.favorite,
                          size: 25,
                          color: Colors.red,
                        )
                      : Icon(Icons.favorite_border, size: 25)));
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => secnd()),
          );
        },
        label: Text(
          "Favorites",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
