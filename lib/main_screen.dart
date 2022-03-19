import 'package:flutter/material.dart';
import 'package:my_flutter/done_tourism_list.dart';
import 'package:my_flutter/provider/done_tourism_provider.dart';
import 'package:my_flutter/tourism_list.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Surabaya"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Consumer<DoneTourismProvider>(
                    builder: (context, DoneTourismProvider data, widget) {
                      return DoneTourismList(
                          doneTourismPlaceList: data.doneTourismPlaceList);
                    },
                  );
                }),
              );
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}
