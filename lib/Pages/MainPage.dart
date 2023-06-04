// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/Dog.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.dog});

  final Dog dog;

  @override
  State<MainPage> createState() => _MainPageState(dog);

}

class _MainPageState extends State<MainPage> {
  var url = "https://images.pexels.com/photos/5230612/pexels-photo-5230612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  var name = "Title Title";
  var a = 2;

  Dog dog;
  _MainPageState(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 20.0),
      child: Container (
        width: double.infinity, height: double.infinity,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity, height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage (
                          fit: BoxFit.cover, image: NetworkImage(
                          dog.imageLink
                      )
                      )
                  ),

                ),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                child: Text(
                  dog.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Align(alignment: Alignment.bottomLeft,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                      child: Container(width: double.infinity, height: 5, color: Colors.orange,),),
                      const Text("Çocuklarla İletişim:",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        children: <Widget>[
                          dog.goodWithChildren > 0 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithChildren > 1 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithChildren > 2 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithChildren > 3 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithChildren > 4 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                        ],
                      ),
                      const Text("Diğer Köpeklerle İletişim:",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        children: <Widget>[
                          dog.goodWithOtherDogs > 0 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithOtherDogs > 1 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithOtherDogs > 2 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithOtherDogs > 3 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithOtherDogs > 4 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                        ],
                      ),
                      const Text("Yabancılarla İletişim:",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        children: <Widget>[
                          dog.goodWithStrangers > 0 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithStrangers > 1 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithStrangers > 2 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithStrangers > 3 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.goodWithStrangers > 4 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                        ],
                      ),
                      Padding(padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                        child: Container(width: double.infinity, height: 5, color: Colors.orange,),),
                      const Text("Tüy Uzunluğu:",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        children: <Widget>[
                          dog.coatLength > 0 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.coatLength > 1 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.coatLength > 2 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.coatLength > 3 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.coatLength > 4 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                        ],
                      ),
                      const Text("Tüy Dökme:",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        children: <Widget>[
                          dog.shedding > 0 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.shedding > 1 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.shedding > 2 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.shedding > 3 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.shedding > 4 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                        ],
                      ),
                      const Text("Tüy Bakımı:",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        children: <Widget>[
                          dog.grooming > 0 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.grooming > 1 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.grooming > 2 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.grooming > 3 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                          dog.grooming > 4 ?
                          Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange,
                            size: 36.0,
                          ):Icon(
                            CupertinoIcons.paw,
                            color: Colors.orange[200],
                            size: 36.0,
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: Container(width: double.infinity, height: 5, color: Colors.orange,),),
                    ],)
              ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}

/*

child: Container(
        width: 200, height: 50,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage (
                fit: BoxFit.cover, image: NetworkImage(
                url
            )
            )
        ),
      ),

 */