import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'package:staj_test/Pages/MainPage.dart';
import 'Models/Dog.dart';

void main () {runApp(const MyApp());}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Dog>> futureDog;

  Future<List<Dog>> fetchDog() async {
    final response = await http
        .get(Uri.parse('https://egitim.azurewebsites.net/Dog/GetDogInformation'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((x) => Dog.fromJson(x)).toList();
      //Dog.fromJson(jsonDecode(response.body))
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    futureDog = fetchDog();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: Colors.orange),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Köpek Kütüphanesi'),
              backgroundColor: Colors.white,
              centerTitle: true,
              titleTextStyle: const TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
              fontWeight: FontWeight.bold),
            ),
            body: MasonryGridView.builder(
              gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 40,
              itemBuilder: (context, int i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FutureBuilder<List<Dog>>(
                    future: futureDog,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 200, height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage (
                                        fit: BoxFit.cover, image: NetworkImage(
                                        snapshot.data![i].imageLink
                                    )
                                    )
                                ),

                              ),),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    snapshot.data![i].name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  )
              ),
            )
        )
    );
  }

}
/*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: MasonryGridView.builder(
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, int i) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder<List<Dog>>(
                future: futureDog,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Row(
                      children: [Text(snapshot.data![i].name),
                        Image.network(snapshot.data![i].imageLink),],
                    );
                  } else if (snapshot.hasError) {
                    print("log" + "error"); return Text('${snapshot.error}');
                  }
                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              )
            ),
          )
      ),
      builder: (context, child) {
        return DefaultTextStyle(
          style: const TextStyle(color: Colors.black),
          child: child!,
        );
      },
    );
  }*/



