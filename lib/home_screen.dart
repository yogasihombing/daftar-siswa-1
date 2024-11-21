import 'package:daftarsiswa1/api_service.dart';
import 'package:daftarsiswa1/dataclass.dart';
import 'package:flutter/material.dart';

import 'main.dart';


void main() {
  runApp(MyApp());
}
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Service serviceAPI = Service();
  late Future<List<cData>> listData;

  @override
  void initState() {
    super.initState();
    listData = serviceAPI.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    print(listData);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Test API'),
            ),
            body: Container(
              child: FutureBuilder<List<cData>>(
                  future: listData,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<cData> isiData = snapshot.data!;
                      return ListView.builder(
                        itemCount: isiData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(isiData[index].cnama),
                            subtitle: Text(isiData[index].cnis),
                            leading: Row(
                              children: [
                                Icon(Icons.edit),
                                Icon(Icons.delete),
                              ],
                            ),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return const CircularProgressIndicator();
                  }),
            )));
  }
}
